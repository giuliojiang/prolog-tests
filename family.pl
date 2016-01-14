/*

    MAC, MCSs, MRes - 
    Module 531: Laboratory (Prolog)

    Comp 2: 276 Introduction to Prolog

    File: family.pl - cjh

*/

child_of( emmeline, frank ). 
child_of( amelia, frank ).
child_of( harold, frank ).
child_of( chris, amelia ).
child_of( chris, john ).
child_of( emlyn, chris ).
child_of( emlyn, elizabeth ).
child_of( brendon, chris ).
child_of( brendon, elizabeth ). 
child_of( irene, maurice ).
child_of( les, maurice ).
child_of( elizabeth, irene ).
child_of( elizabeth, george ).
child_of( margaret, irene ).
child_of( margaret, george ).
child_of( rebecca, margaret ).
child_of( louise, margaret ).   
child_of( nick, margaret ).
child_of( rebecca, peter ).
child_of( louise, peter ).
child_of( nick, peter ).

male( frank ).   
male( harold ).
male( chris ).
male( john ).
male( emlyn ).
male( brendon ).
male( maurice ).
male( les ).
male( nick ).
male( peter ).
male( george ).

female( emmeline ).
female( amelia ).
female( elizabeth ).
female( irene ).
female( margaret ).
female( rebecca ).
female( louise ).

% end of data

mother_of(Mother, Child) :-
    female(Mother),
    child_of(Child, Mother).

grandparent_of(GrandParent, GrandChild) :-
    child_of(Middle, GrandParent),
    child_of(GrandChild, Middle).

daughter_of(Daughter, Parent) :-
    female(Daughter),
    child_of(Daughter, Parent).

sibling_of(A, B) :-
    child_of(A, Parent),
    child_of(B, Parent),
    A \= B.
    
uncle_of(Uncle, Child) :-
    child_of(Child, Parent),
    sibling_of(Parent, Uncle),
    male(Uncle).

niece_of(Niece, Relative) :-
    female(Niece),
    child_of(Niece, Parent),
    sibling_of(Relative, Parent).

great_grandfather_of(Ggf, Ggc) :-
    grandparent_of(GrandParent, Ggc),
    child_of(GrandParent, Ggf),
    male(Ggf).

ancestor_of(Ancestor, Descendant) :-
    child_of(Descendant, Ancestor).
ancestor_of(Ancestor, Descendant) :-
    child_of(Middle, Ancestor),
    ancestor_of(Middle, Descendant).