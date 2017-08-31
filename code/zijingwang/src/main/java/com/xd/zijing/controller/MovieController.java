package com.xd.zijing.controller;

import com.xd.zijing.entity.MovieType;
import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.Movie;
import com.xd.zijing.entity.Version;
import com.xd.zijing.service.MovieService;
import com.xd.zijing.service.MovieTypeService;
import com.xd.zijing.service.VersionService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created by lenovo on 2017/8/22.
 */
@Controller
public class MovieController {

    @Autowired
    private MovieService movieService;

    @Autowired
    private MovieTypeService movieTypeService;

    @RequestMapping(value = "/movie/movieList", method = RequestMethod.GET)
    private String index(@RequestParam(name = "cur", defaultValue = "1") int cur, Model model) {
        Page page = movieService.queryMovies(cur);
        model.addAttribute("page", page);
        return "lbq/fbms/movieList";
    }

    @RequestMapping(value = "/movie/{movieId}/movieDelete", method = RequestMethod.GET)
    public String movieDelete(@PathVariable("movieId") int movieId) {
        movieService.deleteById(movieId);
        return "redirect:/movie/movieList";
    }

    @RequestMapping(value = "/movie/{movieId}/movieDetail", method = RequestMethod.GET)
    public String movieDetail(@PathVariable("movieId") int movieId, Model model) {
        Movie movie = movieService.queryById(movieId);
        model.addAttribute("movie", movie);
        return "lbq/fbms/movieDetail";
    }

    @RequestMapping(value = "/movie/{movieId}/movieDetailUpdate", method = RequestMethod.POST)
    public String movieDetailUpdate(@PathVariable("movieId") int movieId, Model model) {
        Movie movie = movieService.queryById(movieId);
        model.addAttribute("movie", movie);

        List<MovieType> movieTypes = movieTypeService.findAllForMovie();
        model.addAttribute("movieTypes", movieTypes);
        return "lbq/fbms/movieDetailUpdate";
    }

    @RequestMapping(value = "/movie/movieUpdate", method = RequestMethod.POST)
    public String movieUpdate(Movie movie, @RequestParam("postFile") MultipartFile postFile, HttpServletRequest request) throws IOException {
        String path = request.getServletContext().getRealPath("image");
        File post = new File(path ,
                System.currentTimeMillis() + postFile.getOriginalFilename());
        if (!postFile.isEmpty()) {
            FileUtils.copyInputStreamToFile(postFile.getInputStream(), post);
        }
        movie.setPost(post.getName());
        movieService.updateMovie(movie);
        return "redirect:/movie/movieList";
    }

    @RequestMapping(value = "/movie/movieAdd", method = RequestMethod.GET)
    public String movieAdd(Model model) {
        List<MovieType> movieTypes = movieTypeService.findAllForMovie();
        model.addAttribute("movieTypes", movieTypes);
        return "lbq/fbms/movieAdd";
    }

    @RequestMapping(value = "/movie/movieAddAction", method = RequestMethod.POST)
    public String movieAddAction(Movie movie, @RequestParam("postFile") MultipartFile postFile, HttpServletRequest request) throws IOException {
        String path = request.getServletContext().getRealPath("image");

        //UUID.randomUUID().toString();

        File post = new File(path,
                System.currentTimeMillis() + postFile.getOriginalFilename());
        if (!postFile.isEmpty()) {
            FileUtils.copyInputStreamToFile(postFile.getInputStream(), post);
        }
        movie.setPost(post.getName());
        movieService.addMovie(movie);
        return "redirect:/movie/movieList";
    }
}
