structure RT_Text = RT_Text;

structure RT_l_1 = RT_List(structure Elem = RT_Text);

structure RT_l_2 = RT_List(structure Elem = RT_l_1);

structure RT_s_3 = RT_Set(structure Elem = RT_Text);

structure RT_x_4 =
    struct
        type t = RT_Text.t * RT_l_2.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_l_2.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_l_2.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_l_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_Bool = RT_Bool;

structure RT_x_5 =
    struct
        type t = RT_Text.t * RT_l_1.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_l_1.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_l_1.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_l_1.typeToString ()) ^
                              ")";
    end;
    
structure RT_Nat = RT_Nat;

structure RT_s_6 = RT_Set(structure Elem = RT_Nat);

structure RT_x_7 =
    struct
        type t = RT_l_2.t * RT_s_3.t;
        
        fun equ (x:t, y:t) = RT_l_2.equ(#1 x, #1 y) andalso 
                             RT_s_3.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_l_2.toString(#1 x )) ^ "," ^
                             (RT_s_3.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_l_2.typeToString ()) ^ " >< " ^
                              (RT_s_3.typeToString ()) ^
                              ")";
    end;
    
structure PAGE =
    struct
        type Word_ = RT_Text.t;
        
        type Line_ = RT_l_1.t;
        
        type Page_ = RT_l_2.t;
        
        type Dict_ = RT_s_3.t;
        
        fun is_on_line'64D_ (word'6BC_, line'6C2_) = (R_coverage.cancel(RT_Text.fromLit "PAGE.rsl", (18, 17)); if RT_l_1.equ (line'6C2_, ([]:RT_l_1.t)) then (R_coverage.cancel(RT_Text.fromLit "PAGE.rsl", (18, 38)); false) else (R_coverage.cancel(RT_Text.fromLit "PAGE.rsl", (19, 22)); (RT_Text.equ ((RT_l_1.R_hd(line'6C2_)), word'6BC_)) orelse (R_coverage.cancel(RT_Text.fromLit "PAGE.rsl", (19, 42)); ((is_on_line'64D_) (word'6BC_, RT_l_1.R_tl(line'6C2_))))));
        
        fun is_on'3F5_ (word'45F_, page'465_) = (R_coverage.cancel(RT_Text.fromLit "PAGE.rsl", (12, 17)); if RT_l_2.equ (page'465_, ([]:RT_l_2.t)) then (R_coverage.cancel(RT_Text.fromLit "PAGE.rsl", (12, 38)); false) else (R_coverage.cancel(RT_Text.fromLit "PAGE.rsl", (13, 22)); (((is_on_line'64D_) (word'45F_, RT_l_2.R_hd(page'465_)))) orelse (R_coverage.cancel(RT_Text.fromLit "PAGE.rsl", (13, 51)); ((is_on'3F5_) (word'45F_, RT_l_2.R_tl(page'465_))))));
        
        fun spell_check'D55_ (page'DC5_, dict'DCB_) = (R_coverage.cancel(RT_Text.fromLit "PAGE.rsl", (36, 17)); );
        
        fun number_of_words_in_lines'AFD_ (word'B7A_, line'B80_) = (R_coverage.cancel(RT_Text.fromLit "PAGE.rsl", (30, 17)); RT_s_6.R_card((RT_s_6.R_compss (fn (idx'BD4_:RT_Nat.t) => idx'BD4_) (fn (idx'BD4_:RT_Nat.t) => (RT_Nat.R_ge (idx'BD4_, RT_Int.fromLit "0")) andalso (((is_on_line'64D_) (word'B7A_, line'B80_)))) (RT_l_1.R_inds(line'B80_)))));
        
        fun number_of'8A5_ (word'913_, page'919_) = (R_coverage.cancel(RT_Text.fromLit "PAGE.rsl", (24, 17)); if RT_l_2.equ (page'919_, ([]:RT_l_2.t)) then (R_coverage.cancel(RT_Text.fromLit "PAGE.rsl", (24, 38)); RT_Int.fromLit "0") else (R_coverage.cancel(RT_Text.fromLit "PAGE.rsl", (25, 22)); RT_Nat.R_add (((number_of_words_in_lines'AFD_) (word'913_, RT_l_2.R_hd(page'919_))), ((number_of'8A5_) (word'913_, RT_l_2.R_tl(page'919_))))));
        
    end;
    
open PAGE;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "PAGE.rsl", (25, 22), (26, 17));
R_coverage.mark(RT_Text.fromLit "PAGE.rsl", (24, 38), (25, 20));
R_coverage.mark(RT_Text.fromLit "PAGE.rsl", (24, 17), (26, 20));
R_coverage.mark(RT_Text.fromLit "PAGE.rsl", (30, 17), (30, 85));
R_coverage.mark(RT_Text.fromLit "PAGE.rsl", (36, 17), (38, 3));
R_coverage.mark(RT_Text.fromLit "PAGE.rsl", (13, 51), (14, 19));
R_coverage.mark(RT_Text.fromLit "PAGE.rsl", (13, 22), (14, 17));
R_coverage.mark(RT_Text.fromLit "PAGE.rsl", (12, 38), (13, 20));
R_coverage.mark(RT_Text.fromLit "PAGE.rsl", (12, 17), (14, 20));
R_coverage.mark(RT_Text.fromLit "PAGE.rsl", (19, 42), (20, 19));
R_coverage.mark(RT_Text.fromLit "PAGE.rsl", (19, 22), (20, 17));
R_coverage.mark(RT_Text.fromLit "PAGE.rsl", (18, 38), (19, 20));
R_coverage.mark(RT_Text.fromLit "PAGE.rsl", (18, 17), (20, 20)));
RSL.print_error_count();
R_coverage.save_marked();
