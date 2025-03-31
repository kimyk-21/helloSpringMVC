package kr.ac.hansung.cse.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import kr.ac.hansung.cse.model.Offer;
import kr.ac.hansung.cse.service.OfferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class OfferController {
    //Controller -> Service -> Dao
    @Autowired
    private OfferService offerService;

    @GetMapping("/offers")
    public String showOffers(Model model) {
        List<Offer> offers = offerService.getAllOffers();
        model.addAttribute("id_offers", offers);

        return "offers";
    }

    @GetMapping("/createoffer")
    public String createOffer(Model model) {
        model.addAttribute("offer", new Offer());
        return "createoffer"; //빈 offer
    }

    @PostMapping("docreate")
    public String doCreate(Model model, @Valid Offer offer, BindingResult result) {
        //System.out.println(offer); //offer에서 tostring했어서 출력가능함

        if(result.hasErrors()) {
            System.out.println("== Form data does not validated ==");

            List<ObjectError> errors = result.getAllErrors();

            for(ObjectError error:errors) {
                System.out.println(error.getDefaultMessage()); //오퍼에서 정한 에러메시지 출력
            } //얘는 이미 입력된 상태, 모델에 이미 offer 들어가있음.

            return "createoffer"; //오퍼 내용이 반영됨
        }

        //Controller -> Service -> Dao
        offerService.insertOffer(offer); //Service로 얘를 호출, db에 저장
        return "offercreated"; //view로 넘김
    }

}
