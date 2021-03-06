JsOsaDAS1.001.00bplist00?Vscripto? / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
   S u m m a r y : 
 	 U s i n g   t h e   s c r e e n   r e c o r d i n g   f u n c t i o n   o f   Q u i c k T i m e   P l a y e r   o n   M a c O S   
 	 J a v a S c r i p t   f o r   A u t o m a t i o n ( J X A )   t o   r e c o r d   t h e   s c r e e n   a t   a   s p e c i f i e d   t i m e 
 
   S u p p o r t V e r s i o n : 
 	 m a c O S   M o n t e r e y ( v e r s i o n   1 2 . 4 ) 
 	 Q u i c k T i m e   P l a y e r ( v e r s i o n   1 0 . 5 ) 
 
   U s a g e : 
 	 1 . Q u i c k T i m e   P l a y e r   s e t t i n g s 
 	 	 S e l e c t   ' R e c o r d   S e l e c t i o n '   a n d   s e t   t h e   a r e a   y o u   w a n t   t o   r e c o r d   a n d   
 	 	 S e t   t h e   a r e a   y o u   w a n t   t o   r e c o r d   a n d   t h e   l o c a t i o n   w h e r e   
 	 	 y o u   w a n t   t o   s a v e   t h e   f i l e   ( O p t i o n s!? D e s t i n a t i o n ) . 
 	 2 . S e t   t h e   r e c o r d i n g   t i m e 
 	 	 E n t e r   t h e   r e c o r d i n g   t i m e   i n   t h e   d i a l o g   t h a t   a p p e a r s   a f t e r   s t a r t u p . 
 	 	 e x ) 3 6 0 0 ( s e c o n d s )   =   6 0 ( m i n u t e s )   =   1 ( h o u r ) 
 	 	 R e c o r d i n g   t i m e   d e p e n d s   o n   t h e   p r o c e s s   a n d   
 	 	 m a y   d e v i a t e   b y   a   f e w   s e c o n d s   t o   a   f e w   t e n s   o f   s e c o n d s . 
 	 	 S e t   t h e   r e c o r d i n g   t i m e   t o   a   v a l u e   l a r g e r   t h a n   t h e   d e s i r e d   r e c o r d i n g   t i m e . 
 	 	   
   r e f e r e n c e 
 	 1 . J a v a S c r i p t   f o r   A u t o m a t i o n   R e l e a s e   N o t e s 
 	 h t t p s : / / d e v e l o p e r . a p p l e . c o m / l i b r a r y / a r c h i v e / r e l e a s e n o t e s / I n t e r a p p l i c a t i o n C o m m u n i c a t i o n / R N - J a v a S c r i p t F o r A u t o m a t i o n / A r t i c l e s / I n t r o d u c t i o n . h t m l # / / a p p l e _ r e f / d o c / u i d / T P 4 0 0 1 4 5 0 8 - C H 1 1 1 - S W 1 
 	 2 . M a c   :   J a v a S c r i p t   f o r   A u t o m a t i o n   ( J X A )  O?e???Qx 
 	 h t t p : / / w w w . o p e n s p c 2 . o r g / r e i b u n / J X A / Y o s e m i t e / 
 	 3 . J a v a S c r i p t   f o r   A u t o m a t i o n   ( J X A ) 
 	 h t t p : / / t o n b i . j p / A p p l e S c r i p t / J a v a S c r i p t / 
 	 4 . J a v a S c r i p t   f o r   A u t o m a t i o n   C o o k b o o k 
 	 h t t p s : / / g i t h u b . c o m / J X A - C o o k b o o k / J X A - C o o k b o o k / w i k i / 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * / 
 
 
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *   
   F u n c t i o n   N a m e : 
 	 a s k _ r e c o r d i n g _ t i m e ( ) : 
 	 F u n c t i o n   t o   d i s p l a y   a   d i a l o g   b o x   t o   r e q u e s t   t h e   i n p u t   o f   r e c o r d i n g   t i m e   a n d   r e t u r n   t h e   i n p u t   v a l u e 
   A r g u m e n t s : 
 	 N o n e 
   R e t u r n   v a l u e : 
 	 r e s p o n s e . t e x t R e t u r n e d :   r e c o r d i n g   t i m e 
   D e s c r i p t i o n : 
 	 R e c o r d e d   t i m e   i s   p r o c e s s e d   o n l y   f o r   n u m e r i c a l   v a l u e s . 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * / 
 f u n c t i o n   a s k _ r e c o r d i n g _ t i m e ( ) { 
 	 v a r   a p p   =   A p p l i c a t i o n . c u r r e n t A p p l i c a t i o n ( ) 
 	 a p p . i n c l u d e S t a n d a r d A d d i t i o n s   =   t r u e 
   	 v a r   s t r _ c h e c k   =   t r u e ; 
 	 
 	 / /   N o n - n u m e r i c   r e p e t i t i o n 
 	 w h i l e ( s t r _ c h e c k   = =   t r u e ) { 
 	 	 v a r   r e s p o n s e   =   a p p . d i s p l a y D i a l o g ( " P l e a s e   e n t e r   t h e   r e c o r d i n g   t i m e ( s e c ) " ,   { 
         	 d e f a u l t A n s w e r :   " " , 
         	 w i t h I c o n :   " n o t e " , 
       	 	 b u t t o n s :   [ " C a n c e l " ,   " O K " ] , 
         	 d e f a u l t B u t t o n :   " O K " 
 	 	 } ) 
 	 
 	 	 i f ( ! ( i s N a N ( r e s p o n s e . t e x t R e t u r n e d ) ) ) { 
 	 	 	 / /   I f   i t ' s   a   n u m b e r ,   i t   e x i t s   t h e   l o o p 
 	 	 	 s t r _ c h e c k   =   f a l s e ; 
 	 	 } 
 
 	 	 i f ( r e s p o n s e . b u t t o n R e t u r n e d   = =   " C a n c e l " ) { 
 	 	 	 a p p . d i s p l a y A l e r t ( ' P u s h e d   c a n c e l   b u t t o n .   Q u i t   s c r i p t . ' ) ; 
 	 	 	 a p p . q u i t ( ) 
 	 	 } 
 	 } 
 	 c o n s o l e . l o g ( ' [ a s k _ r e c o r d i n g _ t i m e ( ) ] R e c o r d i n g   t i m e % i s e c ' ,   r e s p o n s e . t e x t R e t u r n e d ) ; 
 	 r e t u r n   r e s p o n s e . t e x t R e t u r n e d 
 } 
 
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
   F u n c t i o n   N a m e : 
 	 q u i c k t i m e p l a y e r _ r u n n n i n g _ c h e c k ( ) : 
 	 F u n c t i o n   t o   d e t e r m i n e   i f   Q u i c k T i m e   P l a y e r   i s   r u n n i n g 
   A r g u m e n t s : 
 	 N o n e 
   R e t u r n   v a l u e : 
 	 t r u e : Q u i c k T i m e   P l a y e r   i s   r u n n i n g 
 	 f a l s e : Q u i c k T i m e   P l a y e r   i s   n o t   r u n n i n g 
   D e s c r i p t i o n : 
 	 R e t u r n s   t r u e   i f   t h e   Q u i c k T i m e   P l a y e r   i s   r u n n n i n g ,   f a l s e   o t h e r w i s e 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * / 
 f u n c t i o n   q u i c k t i m e p l a y e r _ r u n n n i n g _ c h e c k ( ) { 
 	 v a r   q t R u n n i n g F l a g   =   f a l s e ; 
 	 v a r   q t   =   A p p l i c a t i o n ( ' Q u i c k T i m e   P l a y e r ' ) 
 	 i f   ( q t . r u n n i n g ( ) ) { 
 	 	 q t R u n n i n g F l a g   =   t r u e ; 
 	 } 
 	 e l s e { 
 	 	 q t R u n n i n g F l a g   =   f a l s e ; 
 	 } 
 	 r e t u r n   q t R u n n i n g F l a g ; 
 } 
 
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
   F u n c t i o n   N a m e : 
   	 q u i c k t i m e p l a y e r _ p l a y _ m u l t i s c r e e n s ( ) 
 	 F u n c t i o n   t o   d e t e r m i n e   i f   Q u i c k T i m e   P l a y e r   p l a y b a c k   p r o c e s s   h a s   b e e n   e x e c u t e d 
   A r g u m e n t s : 
 	 N o n e 
   R e t u r n   v a l u e : 
 	 t r u e : Q u i c k T i m e   P l a y e r   p l a y b a c k   p r o c e s s i n g   w a s   e x e c u t e d 
 	 f a l s e :   Q u i c k T i m e   P l a y e r   p l a y b a c k   p r o c e s s i n g   c o u l d   n o t   b e   e x e c u t e d 
   D e s c r i p t i o n : 
 	 O b t a i n   t h e   n u m b e r   o f   e l e m e n t s   f r o m   t h e   d o c u m e n t   c l a s s   a n d   
 	 i f   t h e   n u m b e r   o f   e l e m e n t s   i s   n o t   z e r o ,   e x e c u t e   t h e   p l a y b a c k   p r o c e s s . 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * / 
 f u n c t i o n   q u i c k t i m e p l a y e r _ p l a y _ m u l t i s c r e e n s ( ) { 
 	 v a r   q t   =   A p p l i c a t i o n ( ' Q u i c k T i m e   P l a y e r ' ) 
 	 v a r   q t A c t i v e S c r e e n F l a g   =   f a l s e ; 
 	 q t . a c t i v a t e ( ) ; 
 	 v a r   s c r e e n _ n u m   =   q t . d o c u m e n t s . l e n g t h ; 
 	 c o n s o l e . l o g ( ' [ q u i c k t i m e p l a y e r _ p l a y _ m u l t i s c r e e n s ( ) ] N u m b e r   o f   s c r e e n s : % i ' , s c r e e n _ n u m ) ; 
 	 i f   ( s c r e e n _ n u m   ! =   0 ) { 
 	 	 q t A c t i v e S c r e e n F l a g   =   t r u e 
 	 	 / /   E n a b l e   l o o p 
 	 	 q t . d o c u m e n t . l o o p i n g   =   t r u e ; 
 	 	 q t . d o c u m e n t . p l a y ( ) ; 
 	 } 
 	 r e t u r n   q t A c t i v e S c r e e n F l a g ; 
 } 
 
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
   F u n c t i o n   n a m e : 
 	 s c r e e n _ r e c o r d i n g ( i n p u t _ t i m e ) : 
 	 S c r e e n   r e c o r d i n g   p r o c e s s i n g   f u n c t i o n 
   A r g u m e n t s 
 	 i n p u t _ t i m e :   t i m e   t o   r e c o r d 
   R e t u r n   v a l u e : 
 	 N o n e 
   D e s c r i p t i o n : 
 	 A   s h o r t c u t   k e y   i n p u t   f r o m   S y s t e m   E v e n t s   l a u n c h e s   t h e   s c r e e n s h o t   t o o l b a r   a n d   s t a r t s   r e c o r d i n g . 
 	 T h e   e l a p s e d   t i m e   t o   b e   r e c o r d e d   i s   o b t a i n e d   f r o m   t h e   d a t a   o b j e c t   c a l c u l a t e d ,   a n d   s e t . 
 	 A f t e r   t h e   r e c o r d i n g   t i m e   h a s   e l a p s e d ,   
 	 r e c o r d i n g   i s   s t o p p e d   b y   i n p u t t i n g   a   s h o r t c u t   k e y   i n   t h e   s a m e   w a y   a s   f o r   t h e   s t a r t   o f   r e c o r d i n g . 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * / 
 f u n c t i o n   s c r e e n _ r e c o r d i n g ( i n p u t _ t i m e ) { 
 	 v a r   s y s   =   A p p l i c a t i o n ( ' S y s t e m   E v e n t s ' ) ; 
 	 / /   c o m m a n d + s h i f t + 5 
 	 s y s . k e y C o d e ( ' 2 3 ' ,   {   u s i n g :   [ ' c o m m a n d   d o w n ' ,   ' s h i f t   d o w n ' ] } ) ; 
 	 d e l a y ( 0 . 5 ) ; 
 	 / /   r e t u r n 
 	 s y s . k e y C o d e ( ' 3 6 ' ) ; 
 	 c o n s o l e . l o g ( ' [ s c r e e n _ r e c o r d i n g ( ) ] R e c o r d i n g   s t a r t ' ) 
 	 
 	 c o n s t   s t a r t T i m e   =   D a t e . n o w ( ) ; 
 	 d e l a y ( i n p u t _ t i m e ) ; 
 	 c o n s t   e l a p s e d T i m e   =   ( D a t e . n o w ( )   -   s t a r t T i m e )   /   1 0 0 0 ; 
 	 
 	 / /   c o m m a n d + c o n t r o l + e s c 
 	 s y s . k e y C o d e ( ' 5 3 ' ,   {   u s i n g :   [ ' c o m m a n d   d o w n ' ,   ' c o n t r o l   d o w n ' ] } ) ; 
 	 c o n s o l e . l o g ( ' [ s c r e e n _ r e c o r d i n g ( ) ] R e c o r d i n g   e n d : E l a p s e d   t i m e % i s e c ' ,   e l a p s e d T i m e ) ; 
 	 r e t u r n 
 } 
 
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *   
   F u n c t i o n   N a m e : 
 	 q u i t _ q u i c k t i m e p l a y e r ( ) : 
 	 F u n c t i o n   t o   q u i t   Q u i c k T i m e   P l a y e r 
   A r g u m e n t s : 
 	 N o n e 
   R e t u r n   v a l u e : 
 	 N o n e 
   D e s c r i p t i o n : 
 	 E x i t   Q u i c k T i m e   P l a y e r   w i t h   t h e   q u i t   c o m m a n d 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * / 
 f u n c t i o n   q u i t _ q u i c k t i m e p l a y e r ( ) { 
 	 v a r   q t   =   A p p l i c a t i o n ( ' Q u i c k T i m e   P l a y e r ' ) 
 	 c o n s o l e . l o g ( ' [ q u i t _ q u i c k t i m e p l a y e r ( ) ] Q u i c k T i m e   P l a y e r   q u i t ' ) ; 
 	 q t . q u i t ( ) 
 	 r e t u r n 
 } 
 
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *   
   F u n c t i o n   N a m e : 
 	 m a i n ( ) : 
 	 m a i n   f u n c t i o n   t h a t   e x e c u t e s   s c r e e n   r e c o r d i n g   w i t h   Q u i c k T i m e   P l a y e r 
   A r g u m e n t s : 
 	 N o n e 
   R e t u r n   v a l u e : 
 	 N o n e 
   D e s c r i p t i o n : 
 	 A l l o w   s c r e e n   r e c o r d i n g   p r o c e s s   o n l y   w h i l e   Q u i c k T i m e   P l a y e r   i s   r u n n i n g 
 	 I f   t h e r e   a r e   s c r e e n s   t h a t   c a n   b e   r e c o r d e d ,   r e c o r d i n g   i s   p e r f o r m e d   f o r   t h e   s p e c i f i e d   t i m e   ( s t a r t   t o   s t o p ) . 
 	 I f   t h e r e   a r e   n o   s c r e e n s   a v a i l a b l e   f o r   r e c o r d i n g   o r   I f   t h e r e   i s   n o   s c r e e n   a v a i l a b l e   f o r   r e c o r d i n g   a n d   
 	 Q u i c k T i m e   P l a y e r   i s   n o t   r u n n i n g   Q u i c k T i m e   P l a y e r   i s   t e r m i n a t e d   a n d   a n   e r r o r   d i a l o g   i s   d i s p l a y e d . 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * / 
 f u n c t i o n   m a i n ( ) { 
 	 v a r   i n p u t _ n u m   =   a s k _ r e c o r d i n g _ t i m e ( ) 
 	 v a r   a p p   =   A p p l i c a t i o n . c u r r e n t A p p l i c a t i o n ( ) ; 
 	 a p p . i n c l u d e S t a n d a r d A d d i t i o n s   =   t r u e ; 
 	 	 
 	 i f ( i n p u t _ n u m   >   0 ) { 
 	 	 c o n s o l e . l o g ( i n p u t _ n u m ) 
 	 	 s c r e e n _ r e c o r d i n g ( i n p u t _ n u m ) ; 
 	 	 q u i t _ q u i c k t i m e p l a y e r ( ) ; 
 	 	 a p p . d i s p l a y A l e r t ( ' S c r e e n   r e c o r d i n g   i s   c o m p l e t e .   Q u i t   s c r i p t . ' ) ; 
 	 	 c o n s o l e . l o g ( ' [ m a i n ( ) ] S c r i p t   e n d ' ) 
 	 } 
 	 e l s e { 
 	 	 a p p . d i s p l a y A l e r t ( ' P l e a s e   e n t e r   a   p o s i t i v e   i n t e g e r   f o r   t h e   e l a p s e d   t i m e . \ n   Q u i t   s c r i p t . ' ) ; 
 	 } 
 	 r e t u r n 
 } 
 
 / / m a i n   f u n c t i o n   c a l l 
 m a i n ( )                              5Zjscr  ??ޭ