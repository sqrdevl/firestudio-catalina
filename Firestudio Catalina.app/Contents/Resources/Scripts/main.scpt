JsOsaDAS1.001.00bplist00�Vscripto� 
 c o n s t   D R I V E R _ D M G   =   ' P r e S o n u s _ U n i v e r s a l C o n t r o l _ v 3 _ 4 _ 2 _ 6 3 9 9 2 . d m g ' ; 
 
 c o n s t   U C _ D M G   =   ' P r e S o n u s _ U n i v e r s a l _ C o n t r o l - 5 8 7 5 . d m g ' ; 
 
 c o n s t   R E M O T E _ D R I V E R   =   ` h t t p s : / / p a e - w e b . p r e s o n u s m u s i c . c o m / d o w n l o a d s / p r o d u c t s / d m g / $ { D R I V E R _ D M G } ` 
 c o n s t   R E M O T E _ U C   =   ` h t t p s : / / p a e - w e b . p r e s o n u s m u s i c . c o m / d o w n l o a d s / p r o d u c t s / d m g / $ { U C _ D M G } ` 
 
 f u n c t i o n   q u i t ( )   { 
 	 a p p . d i s p l a y D i a l o g ( ' F i n i s h e d !   P l e a s e   r e b o o t   y o u r   c o m p u t e r   f o r   t h e   c h a n g e s   t o   t a k e   e f f e c t . ' ,   { 
 	 	 b u t t o n s :   [ " O K " ] , 
 	 	 d e f a u l t B u t t o n :   " O K " , 
 	 	 w i t h T i t l e :   ' F i r e s t u d i o   C a t a l i n a   I n s t a l l e r ' 
 	 } ) ; 
 } ; 
 
 
 c o n s t   a p p   =   A p p l i c a t i o n . c u r r e n t A p p l i c a t i o n ( ) ; 
 a p p . i n c l u d e S t a n d a r d A d d i t i o n s   =   t r u e ; 
 
 c o n s t   a r c h   =   a p p . d o S h e l l S c r i p t ( ' u n a m e   - m ' ) ; 
 
 i f ( a r c h   ! =   ' x 8 6 _ 6 4 ' )   { 
 
 	 a p p . d i s p l a y D i a l o g ( ' T h i s   a p p l i c a t i o n   w i l l   o n l y   r u n   o n   I n t e l   M a c s . ' ,   { 
 	 	 w i t h T i t l e :   ' E r r o r ' , 
 	 	 b u t t o n s :   [ ' E x i t ' ] , 
 	 	 d e f a u l t B u t t o n :   ' E x i t ' , 
 	 	 c a n c e l B u t t o n :   ' E x i t ' , 
 	 	 w i t h I c o n :   ' s t o p ' 
 	 } ) ; 
 } ;   
 
 
 c o n s t   o s v e r   =   p a r s e I n t ( a p p . s y s t e m I n f o ( ) . s y s t e m V e r s i o n . s u b s t r i n g ( 0 , 2 ) ) ; 
 
 i f ( o s v e r   <   1 0 )   { 
 	 a p p . d i s p l a y D i a l o g ( ' T h i s   a p p l i c a t i o n   w i l l   o n l y   r u n   o n   M a c   O S   C a t a l i n a   o r   a b o v e . ' ,   { 
 	 	 w i t h T i t l e :   ' E r r o r ' , 
 	 	 b u t t o n s :   [ ' E x i t ' ] , 
 	 	 d e f a u l t B u t t o n :   ' E x i t ' , 
 	 	 c a n c e l B u t t o n :   ' E x i t ' , 
 	 	 w i t h I c o n :   ' s t o p ' 
 	 } ) ; 
 } 
 
 a p p . d i s p l a y D i a l o g ( " T h i s   p r o g r a m   w i l l   i n s t a l l : \ n \ n "   P r e s o n u s   U n i v e r s a l   C o n t r o l   v 1 . 7 . 6 \ n "   P r e s o n u s   F i r e w i r e   d r i v e r   f o r   M a c   O S   C a t a l i n a \ n \ n A r e   y o u   s u r e   y o u   w a n t   t o   c o n t i n u e ? " ,   { 
 	 b u t t o n s :   [ " E x i t " ,   " C o n t i n u e " ] , 
 	 d e f a u l t B u t t o n :   " E x i t " , 
 	 c a n c e l B u t t o n :   " E x i t " , 
 	 w i t h T i t l e :   ' F i r e s t u d i o   C a t a l i n a   I n s t a l l e r ' 
 } ) ; 
 
 P r o g r e s s . t o t a l U n i t C o u n t   =   5 
 P r o g r e s s . c o m p l e t e d U n i t C o u n t   =   0 
 P r o g r e s s . d e s c r i p t i o n   =   " D o w n l o a d i n g   F i r e w i r e   d r i v e r   D M G . . . " 
 P r o g r e s s . a d d i t i o n a l D e s c r i p t i o n   =   ` F e t c h i n g   $ { D R I V E R _ D M G }   f r o m   P r e s o n u s ` 
 
 d e l a y ( 1 ) ; 
 
 a p p . d o S h e l l S c r i p t ( ` c d   / t m p / ;   c u r l   - O   - #   " $ { R E M O T E _ D R I V E R } " ` ) ; 
 
 
 P r o g r e s s . c o m p l e t e d U n i t C o u n t   =   1 ; 
 P r o g r e s s . d e s c r i p t i o n   =   " D o w n l o a d i n g   U n i v e r s a l   C o n t r o l   D M G . . . " ; 
 P r o g r e s s . a d d i t i o n a l D e s c r i p t i o n   =   ` F e t c h i n g   $ { U C _ D M G }   f r o m   P r e s o n u s ` ; 
 
 d e l a y ( 1 ) ; 
 
 a p p . d o S h e l l S c r i p t ( ` c d   / t m p / ;   c u r l   - O   - #   " $ { R E M O T E _ U C } " ` ) ; 
 
 P r o g r e s s . c o m p l e t e d U n i t C o u n t   =   2 ; 
 P r o g r e s s . d e s c r i p t i o n   =   " D o w n l o a d i n g   U n i v e r s a l   C o n t r o l   D M G . . . " ; 
 P r o g r e s s . a d d i t i o n a l D e s c r i p t i o n   =   ` F e t c h i n g   $ { U C _ D M G }   f r o m   P r e s o n u s ` ; 
 
 d e l a y ( 1 ) ; 
 
 P r o g r e s s . c o m p l e t e d U n i t C o u n t   =   3 ; 
 P r o g r e s s . d e s c r i p t i o n   =   " I n s t a l l i n g   F i r e w i r e   d r i v e r " ; 
 P r o g r e s s . a d d i t i o n a l D e s c r i p t i o n   =   ' T h i s   m a y   t a k e   s o m e   t i m e ,   p l e a s e   b e   p a t i e n t . ' ; 
 
 d e l a y ( 1 ) ; 
 / /   M o u n t   t h e   F W   d r i v e r   D M G 
 a p p . d o S h e l l S c r i p t ( ` h d i u t i l   a t t a c h   - n o v e r i f y   - m o u n t r o o t   / t m p /   / t m p / $ { D R I V E R _ D M G } ` ) ; 
 / /   I n s t a l l   P r e s o n u s   F i r e w i r e   d r i v e r   
 a p p . d o S h e l l S c r i p t ( ' i n s t a l l e r   - p k g   " / t m p / P r e s o n u s   U n i v e r s a l   C o n t r o l / P r e S o n u s   F i r e W i r e   D r i v e r . p k g "   - t a r g e t   / ' , { a d m i n i s t r a t o r P r i v i l e g e s : t r u e ,   w i t h P r o m p t :   " F i r e s t u d i o   C a t a l i n a   I n s t a l l e r   w o u l d   l i k e   t o   m a k e   c h a n g e s . " } ) ; 
 / /   U n m o u n t   d i s k 
 a p p . d o S h e l l S c r i p t ( ` h d i u t i l   d e t a c h   " / t m p / P r e s o n u s   U n i v e r s a l   C o n t r o l / " ` ) ;   
 
 P r o g r e s s . c o m p l e t e d U n i t C o u n t   =   4 ; 
 P r o g r e s s . d e s c r i p t i o n   =   " I n s t a l l i n g   U n i v e r s a l   C o n t r o l   v 1 . 7 . 6 " ; 
 P r o g r e s s . a d d i t i o n a l D e s c r i p t i o n   =   ' ' ; 
 
 d e l a y ( 1 ) ; 
 
 / /   M o u n t   U n i v e r s a l   C o n t r o l   D M G 
 a p p . d o S h e l l S c r i p t ( ` h d i u t i l   a t t a c h   - n o v e r i f y   - m o u n t r o o t   / t m p /   / t m p / $ { U C _ D M G } ` ) ; 
 / /   E x t r a c t   i n s t a l l e r   p a c k a g e 
 a p p . d o S h e l l S c r i p t ( ' p k g u t i l   - - e x p a n d - f u l l   " / t m p / P r e s o n u s   U n i v e r s a l   C o n t r o l / P r e S o n u s   U n i v e r s a l   C o n t r o l . p k g "   / t m p / f s c a t a l i n a ' ) ;   
 / /   U n m o u n t   D G 
 a p p . d o S h e l l S c r i p t ( ` h d i u t i l   d e t a c h   " / t m p / P r e s o n u s   U n i v e r s a l   C o n t r o l / " ` ) ; 
 / /   R e m o v e   a n y   e x i s t i n g   U C   a p p 
 a p p . d o S h e l l S c r i p t ( ' r m   - r f   " / A p p l i c a t i o n s / U n i v e r s a l   C o n t r o l . a p p " ' , { a d m i n i s t r a t o r P r i v i l e g e s : t r u e } ) ; 
 / /   C o p y   n e w   U C   a p p   i n t o   p l a c e 
 a p p . d o S h e l l S c r i p t ( ' c p   - a   " / t m p / f s c a t a l i n a / U C I n s t a l l e r . p k g / P a y l o a d / A p p l i c a t i o n s / U n i v e r s a l   C o n t r o l . a p p "   / A p p l i c a t i o n s / ' , { a d m i n i s t r a t o r P r i v i l e g e s : t r u e } ) ; 
 / /   F i x   p e r m i s s i o n s   o n   U C   A p p 
 a p p . d o S h e l l S c r i p t ( ' c h o w n   - R   r o o t : a d m i n   " / A p p l i c a t i o n s / U n i v e r s a l   C o n t r o l . a p p " ' , { a d m i n i s t r a t o r P r i v i l e g e s : t r u e } ) ; 
 / /   C r e a t e   d i r e c t o r y   f o r   a u d i o   H A L   d e v i c e s ,   c o p y   i n t o   p l a c e ,   a n d   f i x   p e r m i s s i o n s 
 a p p . d o S h e l l S c r i p t ( ' m k d i r   - p   " / L i b r a r y / A p p l i c a t i o n   S u p p o r t / P r e s o n u s / D e v i c e s " ' , { a d m i n i s t r a t o r P r i v i l e g e s : t r u e } ) ; 
 a p p . d o S h e l l S c r i p t ( ' c p   - a     " / t m p / f s c a t a l i n a / U C I n s t a l l e r . p k g / P a y l o a d / L i b r a r y / A p p l i c a t i o n   S u p p o r t / P r e s o n u s / D e v i c e s "   " / L i b r a r y / A p p l i c a t i o n   S u p p o r t / P r e s o n u s / " ' , { a d m i n i s t r a t o r P r i v i l e g e s : t r u e } ) ; 
 a p p . d o S h e l l S c r i p t ( ' c h o w n   - R   r o o t : w h e e l   " / L i b r a r y / A p p l i c a t i o n   S u p p o r t / P r e s o n u s " ' , { a d m i n i s t r a t o r P r i v i l e g e s : t r u e } ) ; 
 / /   C l e a n u p 
 a p p . d o S h e l l S c r i p t ( ' r m   - r f   / t m p / f s c a t a l i n a ' ) ;   
 
                              !Vjscr  ��ޭ