package cz.czechitas.java2webapps.ukol7.controller;

import cz.czechitas.java2webapps.ukol7.service.PostService;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PostController {
    private final PostService service;

    public PostController(PostService service) {
        this.service = service;
    }


    @GetMapping ("/")
    public ModelAndView seznam (@PageableDefault Pageable pageable){
        return new ModelAndView("post")
                .addObject("seznamPostu", service.seznamPostu(pageable));
    }


/*
  @GetMapping( "/{slug}")
    public ModelAndView detail( @PathVariable String slug, @PageableDefault Pageable pageable){
        return new ModelAndView("detail")
                .addObject("slug",service.singlePost(slug, pageable));
  }

 */
    @GetMapping("/{slug}")
    public ModelAndView detail(@PathVariable String slug) {
        return new ModelAndView("detail")
                .addObject("slug", service.jedenPost(slug));
    }



}
