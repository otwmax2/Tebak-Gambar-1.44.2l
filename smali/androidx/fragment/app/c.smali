###### Class androidx.fragment.app.c (androidx.fragment.app.c)
.class Landroidx/fragment/app/c;
.super Landroidx/fragment/app/c0;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/c$m;,
        Landroidx/fragment/app/c$k;,
        Landroidx/fragment/app/c$l;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/c0;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/c$k;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/c0$e;",
            ">;Z",
            "Ljava/util/Map<",
            "Landroidx/fragment/app/c0$e;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;

    move-result-object v8

    .line 2
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v0, 0x0

    :goto_14
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    if-eqz v1, :cond_b9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/fragment/app/c$k;

    .line 5
    invoke-virtual {v14}, Landroidx/fragment/app/c$l;->d()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 6
    invoke-virtual {v14}, Landroidx/fragment/app/c$l;->a()V

    :goto_2d
    move-object/from16 v6, p4

    goto :goto_14

    .line 7
    :cond_30
    invoke-virtual {v14, v9}, Landroidx/fragment/app/c$k;->e(Landroid/content/Context;)Landroidx/fragment/app/f$d;

    move-result-object v1

    if-nez v1, :cond_3a

    .line 8
    invoke-virtual {v14}, Landroidx/fragment/app/c$l;->a()V

    goto :goto_2d

    .line 9
    :cond_3a
    iget-object v15, v1, Landroidx/fragment/app/f$d;->b:Landroid/animation/Animator;

    if-nez v15, :cond_42

    .line 10
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 11
    :cond_42
    invoke-virtual {v14}, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 13
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v6, p4

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 14
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring Animator set on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as this Fragment was involved in a Transition."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_77
    invoke-virtual {v14}, Landroidx/fragment/app/c$l;->a()V

    goto :goto_14

    .line 17
    :cond_7b
    invoke-virtual {v5}, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;

    move-result-object v0

    sget-object v2, Landroidx/fragment/app/c0$e$c;->q:Landroidx/fragment/app/c0$e$c;

    if-ne v0, v2, :cond_85

    const/4 v4, 0x1

    goto :goto_86

    :cond_85
    const/4 v4, 0x0

    :goto_86
    move-object/from16 v12, p2

    if-eqz v4, :cond_8d

    .line 18
    invoke-interface {v12, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    :cond_8d
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 20
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 21
    new-instance v2, Landroidx/fragment/app/c$c;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v13, v2

    move-object v2, v8

    move-object/from16 v16, v3

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Landroidx/fragment/app/c$c;-><init>(Landroidx/fragment/app/c;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/c0$e;Landroidx/fragment/app/c$k;)V

    invoke-virtual {v15, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v16

    .line 22
    invoke-virtual {v15, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v15}, Landroid/animation/Animator;->start()V

    .line 24
    invoke-virtual {v14}, Landroidx/fragment/app/c$l;->c()Landroidx/core/os/e;

    move-result-object v0

    .line 25
    new-instance v1, Landroidx/fragment/app/c$d;

    invoke-direct {v1, v7, v15}, Landroidx/fragment/app/c$d;-><init>(Landroidx/fragment/app/c;Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Landroidx/core/os/e;->c(Landroidx/core/os/e$b;)V

    const/4 v0, 0x1

    goto/16 :goto_14

    .line 26
    :cond_b9
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/c$k;

    .line 27
    invoke-virtual {v4}, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;

    move-result-object v5

    .line 28
    invoke-virtual {v5}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v6

    const-string v10, "Ignoring Animation set on "

    if-eqz p3, :cond_f6

    .line 29
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v5

    if-eqz v5, :cond_f2

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as Animations cannot run alongside Transitions."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_f2
    invoke-virtual {v4}, Landroidx/fragment/app/c$l;->a()V

    goto :goto_bd

    :cond_f6
    if-eqz v0, :cond_119

    .line 32
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v5

    if-eqz v5, :cond_115

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as Animations cannot run alongside Animators."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_115
    invoke-virtual {v4}, Landroidx/fragment/app/c$l;->a()V

    goto :goto_bd

    .line 35
    :cond_119
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 36
    invoke-virtual {v4, v9}, Landroidx/fragment/app/c$k;->e(Landroid/content/Context;)Landroidx/fragment/app/f$d;

    move-result-object v10

    invoke-static {v10}, Landroidx/core/util/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/f$d;

    iget-object v10, v10, Landroidx/fragment/app/f$d;->a:Landroid/view/animation/Animation;

    .line 37
    invoke-static {v10}, Landroidx/core/util/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/animation/Animation;

    .line 38
    invoke-virtual {v5}, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;

    move-result-object v5

    .line 39
    sget-object v11, Landroidx/fragment/app/c0$e$c;->o:Landroidx/fragment/app/c0$e$c;

    if-eq v5, v11, :cond_13c

    .line 40
    invoke-virtual {v6, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 41
    invoke-virtual {v4}, Landroidx/fragment/app/c$l;->a()V

    goto :goto_14f

    .line 42
    :cond_13c
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 43
    new-instance v5, Landroidx/fragment/app/f$e;

    invoke-direct {v5, v10, v8, v6}, Landroidx/fragment/app/f$e;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 44
    new-instance v10, Landroidx/fragment/app/c$e;

    invoke-direct {v10, v7, v8, v6, v4}, Landroidx/fragment/app/c$e;-><init>(Landroidx/fragment/app/c;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/c$k;)V

    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 45
    invoke-virtual {v6, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 46
    :goto_14f
    invoke-virtual {v4}, Landroidx/fragment/app/c$l;->c()Landroidx/core/os/e;

    move-result-object v5

    .line 47
    new-instance v10, Landroidx/fragment/app/c$f;

    invoke-direct {v10, v7, v6, v8, v4}, Landroidx/fragment/app/c$f;-><init>(Landroidx/fragment/app/c;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/c$k;)V

    invoke-virtual {v5, v10}, Landroidx/core/os/e;->c(Landroidx/core/os/e$b;)V

    goto/16 :goto_bd

    :cond_15d
    return-void
.end method

.method private x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/c0$e;Landroidx/fragment/app/c0$e;)Ljava/util/Map;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/c$m;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/c0$e;",
            ">;Z",
            "Landroidx/fragment/app/c0$e;",
            "Landroidx/fragment/app/c0$e;",
            ")",
            "Ljava/util/Map<",
            "Landroidx/fragment/app/c0$e;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v15, 0x0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c$m;

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/c$l;->d()Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_12

    .line 4
    :cond_25
    invoke-virtual {v1}, Landroidx/fragment/app/c$m;->e()Landroidx/fragment/app/z;

    move-result-object v2

    if-nez v15, :cond_2d

    move-object v15, v2

    goto :goto_12

    :cond_2d
    if-eqz v2, :cond_12

    if-ne v15, v2, :cond_32

    goto :goto_12

    .line 5
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1}, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " returned Transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/c$m;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    if-nez v15, :cond_82

    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c$m;

    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/c$l;->a()V

    goto :goto_68

    :cond_81
    return-object v10

    .line 11
    :cond_82
    new-instance v14, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 13
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v4, Lo/a;

    invoke-direct {v4}, Lo/a;-><init>()V

    .line 16
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v21, 0x0

    :goto_ab
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_273

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c$m;

    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/c$m;->i()Z

    move-result v16

    if-eqz v16, :cond_258

    if-eqz v8, :cond_258

    if-eqz v9, :cond_258

    .line 18
    invoke-virtual {v1}, Landroidx/fragment/app/c$m;->g()Ljava/lang/Object;

    move-result-object v0

    .line 19
    invoke-virtual {v15, v0}, Landroidx/fragment/app/z;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    invoke-virtual {v15, v0}, Landroidx/fragment/app/z;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 23
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v16

    .line 24
    invoke-virtual/range {v16 .. v16}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v3

    .line 25
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v16

    .line 26
    invoke-virtual/range {v16 .. v16}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    const/4 v1, 0x0

    .line 27
    :goto_ea
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_109

    .line 28
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move-object/from16 v19, v11

    const/4 v11, -0x1

    if-eq v2, v11, :cond_104

    .line 29
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v2, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_104
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v11, v19

    goto :goto_ea

    .line 30
    :cond_109
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v11

    if-nez v7, :cond_122

    .line 32
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/s;

    .line 33
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/s;

    goto :goto_130

    .line 34
    :cond_122
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/s;

    .line 35
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/s;

    .line 36
    :goto_130
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_135
    if-ge v2, v1, :cond_14f

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 38
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v23, v1

    move-object/from16 v1, v19

    check-cast v1, Ljava/lang/String;

    .line 39
    invoke-virtual {v4, v3, v1}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v23

    goto :goto_135

    .line 40
    :cond_14f
    new-instance v3, Lo/a;

    invoke-direct {v3}, Lo/a;-><init>()V

    .line 41
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v3, v1}, Landroidx/fragment/app/c;->u(Ljava/util/Map;Landroid/view/View;)V

    .line 42
    invoke-virtual {v3, v0}, Lo/a;->q(Ljava/util/Collection;)Z

    .line 43
    invoke-virtual {v3}, Lo/a;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v4, v1}, Lo/a;->q(Ljava/util/Collection;)Z

    .line 44
    new-instance v2, Lo/a;

    invoke-direct {v2}, Lo/a;-><init>()V

    .line 45
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v2, v1}, Landroidx/fragment/app/c;->u(Ljava/util/Map;Landroid/view/View;)V

    .line 46
    invoke-virtual {v2, v11}, Lo/a;->q(Ljava/util/Collection;)Z

    .line 47
    invoke-virtual {v4}, Lo/a;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/a;->q(Ljava/util/Collection;)Z

    .line 48
    invoke-static {v4, v2}, Landroidx/fragment/app/x;->x(Lo/a;Lo/a;)V

    .line 49
    invoke-virtual {v4}, Lo/a;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Landroidx/fragment/app/c;->v(Lo/a;Ljava/util/Collection;)V

    .line 50
    invoke-virtual {v4}, Lo/a;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroidx/fragment/app/c;->v(Lo/a;Ljava/util/Collection;)V

    .line 51
    invoke-virtual {v4}, Lo/g;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1ab

    .line 52
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 53
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v25, v4

    move-object v1, v5

    move-object v3, v8

    move-object v4, v12

    move-object v5, v13

    move-object v7, v14

    move-object v11, v15

    move-object/from16 v2, v18

    const/4 v0, 0x0

    const/4 v8, 0x0

    move-object v15, v9

    goto/16 :goto_266

    .line 54
    :cond_1ab
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    move-object/from16 v19, v0

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v9, 0x1

    .line 55
    invoke-static {v1, v0, v7, v3, v9}, Landroidx/fragment/app/x;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLo/a;Z)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v0, Landroidx/fragment/app/c$g;

    move-object/from16 v22, v19

    move-object/from16 v19, v0

    move-object v7, v1

    move-object/from16 v9, v16

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move-object/from16 v24, v18

    move-object/from16 v2, p5

    move-object/from16 v17, v3

    const/4 v8, 0x0

    move-object/from16 v3, p4

    move-object/from16 v25, v4

    move/from16 v4, p3

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/c$g;-><init>(Landroidx/fragment/app/c;Landroidx/fragment/app/c0$e;Landroidx/fragment/app/c0$e;ZLo/a;)V

    invoke-static {v7, v0}, Landroidx/core/view/x;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/x;

    .line 57
    invoke-virtual/range {v17 .. v17}, Lo/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_203

    move-object/from16 v0, v22

    .line 59
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, v17

    .line 60
    invoke-virtual {v1, v0}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 61
    invoke-virtual {v15, v9, v0}, Landroidx/fragment/app/z;->v(Ljava/lang/Object;Landroid/view/View;)V

    move-object v2, v0

    goto :goto_205

    :cond_203
    move-object/from16 v2, v24

    .line 62
    :goto_205
    invoke-virtual/range {v16 .. v16}, Lo/a;->values()Ljava/util/Collection;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_232

    .line 64
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v3, v16

    .line 65
    invoke-virtual {v3, v0}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_232

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Landroidx/fragment/app/c$h;

    invoke-direct {v4, v6, v15, v0, v13}, Landroidx/fragment/app/c$h;-><init>(Landroidx/fragment/app/c;Landroidx/fragment/app/z;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v3, v4}, Landroidx/core/view/x;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/x;

    const/16 v21, 0x1

    .line 67
    :cond_232
    invoke-virtual {v15, v9, v14, v12}, Landroidx/fragment/app/z;->z(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v4, v12

    move-object v12, v15

    move-object v5, v13

    move-object v13, v9

    move-object v7, v14

    move-object v14, v0

    move-object v11, v15

    move-object v15, v3

    move-object/from16 v18, v9

    move-object/from16 v19, v1

    .line 68
    invoke-virtual/range {v12 .. v19}, Landroidx/fragment/app/z;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 69
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v3, p4

    invoke-interface {v10, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, p5

    .line 70
    invoke-interface {v10, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v9

    goto :goto_266

    :cond_258
    move-object/from16 v24, v2

    move-object/from16 v25, v4

    move-object v1, v5

    move-object v3, v8

    move-object v4, v12

    move-object v5, v13

    move-object v7, v14

    move-object v11, v15

    const/4 v8, 0x0

    move-object v15, v9

    move-object/from16 v2, v24

    :goto_266
    move-object v8, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v7

    move-object v9, v15

    move-object/from16 v4, v25

    move/from16 v7, p3

    move-object v5, v1

    move-object v15, v11

    goto/16 :goto_ab

    :cond_273
    move-object/from16 v24, v2

    move-object/from16 v25, v4

    move-object v1, v5

    move-object v3, v8

    move-object v4, v12

    move-object v5, v13

    move-object v7, v14

    move-object v11, v15

    const/4 v2, 0x1

    const/4 v8, 0x0

    move-object v15, v9

    .line 71
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_28b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3a6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v22, v12

    check-cast v22, Landroidx/fragment/app/c$m;

    .line 73
    invoke-virtual/range {v22 .. v22}, Landroidx/fragment/app/c$l;->d()Z

    move-result v12

    if-eqz v12, :cond_2ad

    .line 74
    invoke-virtual/range {v22 .. v22}, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;

    move-result-object v12

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual/range {v22 .. v22}, Landroidx/fragment/app/c$l;->a()V

    const/4 v2, 0x1

    goto :goto_28b

    .line 76
    :cond_2ad
    invoke-virtual/range {v22 .. v22}, Landroidx/fragment/app/c$m;->h()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroidx/fragment/app/z;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 77
    invoke-virtual/range {v22 .. v22}, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;

    move-result-object v12

    if-eqz v0, :cond_2c2

    if-eq v12, v3, :cond_2bf

    if-ne v12, v15, :cond_2c2

    :cond_2bf
    const/16 v16, 0x1

    goto :goto_2c4

    :cond_2c2
    const/16 v16, 0x0

    :goto_2c4
    if-nez v2, :cond_2df

    if-nez v16, :cond_2d0

    .line 78
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual/range {v22 .. v22}, Landroidx/fragment/app/c$l;->a()V

    :cond_2d0
    move-object/from16 v12, p2

    move-object/from16 v29, v1

    move-object/from16 v28, v4

    move-object/from16 v27, v7

    move-object v2, v13

    move-object v1, v15

    move-object/from16 v8, v24

    const/4 v13, 0x0

    goto/16 :goto_398

    .line 80
    :cond_2df
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p3, v13

    .line 81
    invoke-virtual {v12}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v13

    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 82
    invoke-virtual {v6, v8, v13}, Landroidx/fragment/app/c;->t(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v16, :cond_2fa

    if-ne v12, v3, :cond_2f7

    .line 83
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2fa

    .line 84
    :cond_2f7
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 85
    :cond_2fa
    :goto_2fa
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_311

    .line 86
    invoke-virtual {v11, v2, v7}, Landroidx/fragment/app/z;->a(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v29, v1

    move-object/from16 v28, v4

    move-object/from16 v27, v7

    move-object v13, v12

    move-object v4, v14

    move-object v1, v15

    move-object/from16 v12, p2

    move-object/from16 v7, p3

    goto :goto_367

    .line 87
    :cond_311
    invoke-virtual {v11, v2, v8}, Landroidx/fragment/app/z;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v12

    move-object v12, v11

    move-object/from16 v27, v7

    move-object/from16 v7, p3

    move-object/from16 p3, v13

    move-object v13, v2

    move-object/from16 v28, v4

    move-object v4, v14

    move-object v14, v2

    move-object/from16 v29, v1

    move-object v1, v15

    move-object v15, v8

    .line 88
    invoke-virtual/range {v12 .. v19}, Landroidx/fragment/app/z;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 89
    invoke-virtual/range {p3 .. p3}, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;

    move-result-object v12

    sget-object v13, Landroidx/fragment/app/c0$e$c;->q:Landroidx/fragment/app/c0$e$c;

    if-ne v12, v13, :cond_363

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 90
    invoke-interface {v12, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    invoke-virtual {v13}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v15

    iget-object v15, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v13}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v15

    iget-object v15, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 94
    invoke-virtual {v11, v2, v15, v14}, Landroidx/fragment/app/z;->r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;

    move-result-object v14

    new-instance v15, Landroidx/fragment/app/c$i;

    invoke-direct {v15, v6, v8}, Landroidx/fragment/app/c$i;-><init>(Landroidx/fragment/app/c;Ljava/util/ArrayList;)V

    invoke-static {v14, v15}, Landroidx/core/view/x;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/x;

    goto :goto_367

    :cond_363
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 96
    :goto_367
    invoke-virtual {v13}, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;

    move-result-object v14

    sget-object v15, Landroidx/fragment/app/c0$e$c;->p:Landroidx/fragment/app/c0$e$c;

    if-ne v14, v15, :cond_37a

    .line 97
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v21, :cond_377

    .line 98
    invoke-virtual {v11, v2, v5}, Landroidx/fragment/app/z;->u(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_377
    move-object/from16 v8, v24

    goto :goto_37f

    :cond_37a
    move-object/from16 v8, v24

    .line 99
    invoke-virtual {v11, v2, v8}, Landroidx/fragment/app/z;->v(Ljava/lang/Object;Landroid/view/View;)V

    .line 100
    :goto_37f
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual/range {v22 .. v22}, Landroidx/fragment/app/c$m;->j()Z

    move-result v13

    if-eqz v13, :cond_392

    const/4 v13, 0x0

    .line 102
    invoke-virtual {v11, v4, v2, v13}, Landroidx/fragment/app/z;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    move-object v2, v7

    goto :goto_398

    :cond_392
    const/4 v13, 0x0

    .line 103
    invoke-virtual {v11, v7, v2, v13}, Landroidx/fragment/app/z;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v4

    :goto_398
    move-object v15, v1

    move-object v13, v2

    move-object/from16 v24, v8

    move-object/from16 v7, v27

    move-object/from16 v4, v28

    move-object/from16 v1, v29

    const/4 v2, 0x1

    const/4 v8, 0x0

    goto/16 :goto_28b

    :cond_3a6
    move-object/from16 v29, v1

    move-object/from16 v28, v4

    move-object v7, v13

    move-object v4, v14

    move-object v1, v15

    .line 104
    invoke-virtual {v11, v4, v7, v0}, Landroidx/fragment/app/z;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 105
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3b5
    :goto_3b5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_429

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/c$m;

    .line 106
    invoke-virtual {v5}, Landroidx/fragment/app/c$l;->d()Z

    move-result v7

    if-eqz v7, :cond_3c8

    goto :goto_3b5

    .line 107
    :cond_3c8
    invoke-virtual {v5}, Landroidx/fragment/app/c$m;->h()Ljava/lang/Object;

    move-result-object v7

    .line 108
    invoke-virtual {v5}, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;

    move-result-object v8

    if-eqz v0, :cond_3d8

    if-eq v8, v3, :cond_3d6

    if-ne v8, v1, :cond_3d8

    :cond_3d6
    const/4 v12, 0x1

    goto :goto_3d9

    :cond_3d8
    const/4 v12, 0x0

    :goto_3d9
    if-nez v7, :cond_3dd

    if-eqz v12, :cond_3b5

    .line 109
    :cond_3dd
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/view/a0;->U(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_414

    const/4 v7, 0x2

    .line 110
    invoke-static {v7}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v7

    if-eqz v7, :cond_410

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SpecialEffectsController: Container "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " has not been laid out. Completing operation "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FragmentManager"

    .line 113
    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_410
    invoke-virtual {v5}, Landroidx/fragment/app/c$l;->a()V

    goto :goto_3b5

    .line 115
    :cond_414
    invoke-virtual {v5}, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v7

    .line 116
    invoke-virtual {v5}, Landroidx/fragment/app/c$l;->c()Landroidx/core/os/e;

    move-result-object v8

    new-instance v12, Landroidx/fragment/app/c$j;

    invoke-direct {v12, v6, v5}, Landroidx/fragment/app/c$j;-><init>(Landroidx/fragment/app/c;Landroidx/fragment/app/c$m;)V

    .line 117
    invoke-virtual {v11, v7, v2, v8, v12}, Landroidx/fragment/app/z;->w(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/e;Ljava/lang/Runnable;)V

    goto :goto_3b5

    .line 118
    :cond_429
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/a0;->U(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_434

    return-object v10

    :cond_434
    const/4 v1, 0x4

    .line 119
    invoke-static {v9, v1}, Landroidx/fragment/app/x;->A(Ljava/util/ArrayList;I)V

    move-object/from16 v1, v29

    .line 120
    invoke-virtual {v11, v1}, Landroidx/fragment/app/z;->o(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v16

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v11, v3, v2}, Landroidx/fragment/app/z;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;

    move-result-object v13

    move-object v12, v11

    move-object/from16 v14, v28

    move-object v15, v1

    move-object/from16 v17, v25

    invoke-virtual/range {v12 .. v17}, Landroidx/fragment/app/z;->y(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v2, 0x0

    .line 123
    invoke-static {v9, v2}, Landroidx/fragment/app/x;->A(Ljava/util/ArrayList;I)V

    move-object/from16 v2, v28

    .line 124
    invoke-virtual {v11, v0, v2, v1}, Landroidx/fragment/app/z;->A(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v10
.end method


# virtual methods
.method f(Ljava/util/List;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/c0$e;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v6, v1

    move-object v7, v6

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c0$e;

    .line 2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v3

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3}, Landroidx/fragment/app/c0$e$c;->f(Landroid/view/View;)Landroidx/fragment/app/c0$e$c;

    move-result-object v3

    .line 3
    sget-object v4, Landroidx/fragment/app/c$a;->a:[I

    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_3c

    const/4 v2, 0x2

    if-eq v4, v2, :cond_3c

    const/4 v2, 0x3

    if-eq v4, v2, :cond_3c

    const/4 v2, 0x4

    if-eq v4, v2, :cond_36

    goto :goto_7

    .line 4
    :cond_36
    sget-object v2, Landroidx/fragment/app/c0$e$c;->p:Landroidx/fragment/app/c0$e$c;

    if-eq v3, v2, :cond_7

    move-object v7, v1

    goto :goto_7

    .line 5
    :cond_3c
    sget-object v2, Landroidx/fragment/app/c0$e$c;->p:Landroidx/fragment/app/c0$e$c;

    if-ne v3, v2, :cond_7

    if-nez v6, :cond_7

    move-object v6, v1

    goto :goto_7

    .line 6
    :cond_44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_95

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/c0$e;

    .line 10
    new-instance v5, Landroidx/core/os/e;

    invoke-direct {v5}, Landroidx/core/os/e;-><init>()V

    .line 11
    invoke-virtual {v4, v5}, Landroidx/fragment/app/c0$e;->j(Landroidx/core/os/e;)V

    .line 12
    new-instance v8, Landroidx/fragment/app/c$k;

    invoke-direct {v8, v4, v5, p2}, Landroidx/fragment/app/c$k;-><init>(Landroidx/fragment/app/c0$e;Landroidx/core/os/e;Z)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v5, Landroidx/core/os/e;

    invoke-direct {v5}, Landroidx/core/os/e;-><init>()V

    .line 14
    invoke-virtual {v4, v5}, Landroidx/fragment/app/c0$e;->j(Landroidx/core/os/e;)V

    .line 15
    new-instance v8, Landroidx/fragment/app/c$m;

    const/4 v9, 0x0

    if-eqz p2, :cond_83

    if-ne v4, v6, :cond_86

    goto :goto_85

    :cond_83
    if-ne v4, v7, :cond_86

    :goto_85
    const/4 v9, 0x1

    .line 16
    :cond_86
    invoke-direct {v8, v4, v5, p2, v9}, Landroidx/fragment/app/c$m;-><init>(Landroidx/fragment/app/c0$e;Landroidx/core/os/e;ZZ)V

    .line 17
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v5, Landroidx/fragment/app/c$b;

    invoke-direct {v5, p0, v1, v4}, Landroidx/fragment/app/c$b;-><init>(Landroidx/fragment/app/c;Ljava/util/List;Landroidx/fragment/app/c0$e;)V

    invoke-virtual {v4, v5}, Landroidx/fragment/app/c0$e;->a(Ljava/lang/Runnable;)V

    goto :goto_57

    :cond_95
    move-object v2, p0

    move-object v4, v1

    move v5, p2

    .line 19
    invoke-direct/range {v2 .. v7}, Landroidx/fragment/app/c;->x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/c0$e;Landroidx/fragment/app/c0$e;)Ljava/util/Map;

    move-result-object p1

    .line 20
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p2

    .line 21
    invoke-direct {p0, v0, v1, p2, p1}, Landroidx/fragment/app/c;->w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/c0$e;

    .line 23
    invoke-virtual {p0, p2}, Landroidx/fragment/app/c;->s(Landroidx/fragment/app/c0$e;)V

    goto :goto_a9

    .line 24
    :cond_b9
    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method s(Landroidx/fragment/app/c0$e;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/c0$e$c;->c(Landroid/view/View;)V

    return-void
.end method

.method t(Ljava/util/ArrayList;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2e

    .line 2
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-static {v0}, Landroidx/core/view/d0;->a(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_37

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 6
    :cond_17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, p2, :cond_37

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2b

    .line 9
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/c;->t(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 10
    :cond_2e
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    :goto_37
    return-void
.end method

.method u(Ljava/util/Map;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroidx/core/view/a0;->M(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_9
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_26

    .line 4
    check-cast p2, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_26

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_23

    .line 8
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/c;->u(Ljava/util/Map;Landroid/view/View;)V

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_26
    return-void
.end method

.method v(Lo/a;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lo/a;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/a0;->M(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_28
    return-void
.end method

###### Class androidx.fragment.app.c.a (androidx.fragment.app.c$a)
.class synthetic Landroidx/fragment/app/c$a;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Landroidx/fragment/app/c0$e$c;->values()[Landroidx/fragment/app/c0$e$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/fragment/app/c$a;->a:[I

    :try_start_9
    sget-object v1, Landroidx/fragment/app/c0$e$c;->q:Landroidx/fragment/app/c0$e$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Landroidx/fragment/app/c$a;->a:[I

    sget-object v1, Landroidx/fragment/app/c0$e$c;->r:Landroidx/fragment/app/c0$e$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Landroidx/fragment/app/c$a;->a:[I

    sget-object v1, Landroidx/fragment/app/c0$e$c;->o:Landroidx/fragment/app/c0$e$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Landroidx/fragment/app/c$a;->a:[I

    sget-object v1, Landroidx/fragment/app/c0$e$c;->p:Landroidx/fragment/app/c0$e$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class androidx.fragment.app.c.b (androidx.fragment.app.c$b)
.class Landroidx/fragment/app/c$b;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->f(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/util/List;

.field final synthetic p:Landroidx/fragment/app/c0$e;

.field final synthetic q:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Ljava/util/List;Landroidx/fragment/app/c0$e;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c$b;->q:Landroidx/fragment/app/c;

    iput-object p2, p0, Landroidx/fragment/app/c$b;->o:Ljava/util/List;

    iput-object p3, p0, Landroidx/fragment/app/c$b;->p:Landroidx/fragment/app/c0$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$b;->o:Ljava/util/List;

    iget-object v1, p0, Landroidx/fragment/app/c$b;->p:Landroidx/fragment/app/c0$e;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c$b;->o:Ljava/util/List;

    iget-object v1, p0, Landroidx/fragment/app/c$b;->p:Landroidx/fragment/app/c0$e;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/c$b;->q:Landroidx/fragment/app/c;

    iget-object v1, p0, Landroidx/fragment/app/c$b;->p:Landroidx/fragment/app/c0$e;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/c;->s(Landroidx/fragment/app/c0$e;)V

    :cond_18
    return-void
.end method

###### Class androidx.fragment.app.c.C0051c (androidx.fragment.app.c$c)
.class Landroidx/fragment/app/c$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Z

.field final synthetic d:Landroidx/fragment/app/c0$e;

.field final synthetic e:Landroidx/fragment/app/c$k;

.field final synthetic f:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/c0$e;Landroidx/fragment/app/c$k;)V
    .registers 7

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c$c;->f:Landroidx/fragment/app/c;

    iput-object p2, p0, Landroidx/fragment/app/c$c;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/c$c;->b:Landroid/view/View;

    iput-boolean p4, p0, Landroidx/fragment/app/c$c;->c:Z

    iput-object p5, p0, Landroidx/fragment/app/c$c;->d:Landroidx/fragment/app/c0$e;

    iput-object p6, p0, Landroidx/fragment/app/c$c;->e:Landroidx/fragment/app/c$k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/c$c;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/c$c;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 2
    iget-boolean p1, p0, Landroidx/fragment/app/c$c;->c:Z

    if-eqz p1, :cond_16

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/c$c;->d:Landroidx/fragment/app/c0$e;

    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/c$c;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/c0$e$c;->c(Landroid/view/View;)V

    .line 4
    :cond_16
    iget-object p1, p0, Landroidx/fragment/app/c$c;->e:Landroidx/fragment/app/c$k;

    invoke-virtual {p1}, Landroidx/fragment/app/c$l;->a()V

    return-void
.end method

###### Class androidx.fragment.app.c.d (androidx.fragment.app.c$d)
.class Landroidx/fragment/app/c$d;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Landroidx/core/os/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/Animator;

.field final synthetic b:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c$d;->b:Landroidx/fragment/app/c;

    iput-object p2, p0, Landroidx/fragment/app/c$d;->a:Landroid/animation/Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$d;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    return-void
.end method

###### Class androidx.fragment.app.c.e (androidx.fragment.app.c$e)
.class Landroidx/fragment/app/c$e;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroid/view/ViewGroup;

.field final synthetic p:Landroid/view/View;

.field final synthetic q:Landroidx/fragment/app/c$k;

.field final synthetic r:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/c$k;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c$e;->r:Landroidx/fragment/app/c;

    iput-object p2, p0, Landroidx/fragment/app/c$e;->o:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/c$e;->p:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/c$e;->q:Landroidx/fragment/app/c$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/c$e;->o:Landroid/view/ViewGroup;

    new-instance v0, Landroidx/fragment/app/c$e$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/c$e$a;-><init>(Landroidx/fragment/app/c$e;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

###### Class androidx.fragment.app.c.e.a (androidx.fragment.app.c$e$a)
.class Landroidx/fragment/app/c$e$a;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c$e;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/fragment/app/c$e;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c$e$a;->o:Landroidx/fragment/app/c$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$e$a;->o:Landroidx/fragment/app/c$e;

    iget-object v1, v0, Landroidx/fragment/app/c$e;->o:Landroid/view/ViewGroup;

    iget-object v0, v0, Landroidx/fragment/app/c$e;->p:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c$e$a;->o:Landroidx/fragment/app/c$e;

    iget-object v0, v0, Landroidx/fragment/app/c$e;->q:Landroidx/fragment/app/c$k;

    invoke-virtual {v0}, Landroidx/fragment/app/c$l;->a()V

    return-void
.end method

###### Class androidx.fragment.app.c.f (androidx.fragment.app.c$f)
.class Landroidx/fragment/app/c$f;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Landroidx/core/os/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroidx/fragment/app/c$k;

.field final synthetic d:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/c$k;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c$f;->d:Landroidx/fragment/app/c;

    iput-object p2, p0, Landroidx/fragment/app/c$f;->a:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/c$f;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Landroidx/fragment/app/c$f;->c:Landroidx/fragment/app/c$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c$f;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/c$f;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/c$f;->c:Landroidx/fragment/app/c$k;

    invoke-virtual {v0}, Landroidx/fragment/app/c$l;->a()V

    return-void
.end method

###### Class androidx.fragment.app.c.g (androidx.fragment.app.c$g)
.class Landroidx/fragment/app/c$g;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/c0$e;Landroidx/fragment/app/c0$e;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/fragment/app/c0$e;

.field final synthetic p:Landroidx/fragment/app/c0$e;

.field final synthetic q:Z

.field final synthetic r:Lo/a;

.field final synthetic s:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Landroidx/fragment/app/c0$e;Landroidx/fragment/app/c0$e;ZLo/a;)V
    .registers 6

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c$g;->s:Landroidx/fragment/app/c;

    iput-object p2, p0, Landroidx/fragment/app/c$g;->o:Landroidx/fragment/app/c0$e;

    iput-object p3, p0, Landroidx/fragment/app/c$g;->p:Landroidx/fragment/app/c0$e;

    iput-boolean p4, p0, Landroidx/fragment/app/c$g;->q:Z

    iput-object p5, p0, Landroidx/fragment/app/c$g;->r:Lo/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$g;->o:Landroidx/fragment/app/c0$e;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/c$g;->p:Landroidx/fragment/app/c0$e;

    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/fragment/app/c$g;->q:Z

    iget-object v3, p0, Landroidx/fragment/app/c$g;->r:Lo/a;

    const/4 v4, 0x0

    .line 3
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/x;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLo/a;Z)V

    return-void
.end method

###### Class androidx.fragment.app.c.h (androidx.fragment.app.c$h)
.class Landroidx/fragment/app/c$h;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/c0$e;Landroidx/fragment/app/c0$e;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/fragment/app/z;

.field final synthetic p:Landroid/view/View;

.field final synthetic q:Landroid/graphics/Rect;

.field final synthetic r:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Landroidx/fragment/app/z;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c$h;->r:Landroidx/fragment/app/c;

    iput-object p2, p0, Landroidx/fragment/app/c$h;->o:Landroidx/fragment/app/z;

    iput-object p3, p0, Landroidx/fragment/app/c$h;->p:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/c$h;->q:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$h;->o:Landroidx/fragment/app/z;

    iget-object v1, p0, Landroidx/fragment/app/c$h;->p:Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/c$h;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/z;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

###### Class androidx.fragment.app.c.i (androidx.fragment.app.c$i)
.class Landroidx/fragment/app/c$i;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/c0$e;Landroidx/fragment/app/c0$e;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/util/ArrayList;

.field final synthetic p:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c$i;->p:Landroidx/fragment/app/c;

    iput-object p2, p0, Landroidx/fragment/app/c$i;->o:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$i;->o:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroidx/fragment/app/x;->A(Ljava/util/ArrayList;I)V

    return-void
.end method

###### Class androidx.fragment.app.c.j (androidx.fragment.app.c$j)
.class Landroidx/fragment/app/c$j;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/c0$e;Landroidx/fragment/app/c0$e;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/fragment/app/c$m;

.field final synthetic p:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Landroidx/fragment/app/c$m;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c$j;->p:Landroidx/fragment/app/c;

    iput-object p2, p0, Landroidx/fragment/app/c$j;->o:Landroidx/fragment/app/c$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$j;->o:Landroidx/fragment/app/c$m;

    invoke-virtual {v0}, Landroidx/fragment/app/c$l;->a()V

    return-void
.end method

###### Class androidx.fragment.app.c.k (androidx.fragment.app.c$k)
.class Landroidx/fragment/app/c$k;
.super Landroidx/fragment/app/c$l;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private c:Z

.field private d:Z

.field private e:Landroidx/fragment/app/f$d;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c0$e;Landroidx/core/os/e;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/c$l;-><init>(Landroidx/fragment/app/c0$e;Landroidx/core/os/e;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/c$k;->d:Z

    .line 3
    iput-boolean p3, p0, Landroidx/fragment/app/c$k;->c:Z

    return-void
.end method


# virtual methods
.method e(Landroid/content/Context;)Landroidx/fragment/app/f$d;
    .registers 6

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c$k;->d:Z

    if-eqz v0, :cond_7

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/c$k;->e:Landroidx/fragment/app/f$d;

    return-object p1

    .line 3
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;

    move-result-object v1

    sget-object v2, Landroidx/fragment/app/c0$e$c;->p:Landroidx/fragment/app/c0$e$c;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    iget-boolean v2, p0, Landroidx/fragment/app/c$k;->c:Z

    .line 5
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/f;->c(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/f$d;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/c$k;->e:Landroidx/fragment/app/f$d;

    .line 6
    iput-boolean v3, p0, Landroidx/fragment/app/c$k;->d:Z

    return-object p1
.end method

###### Class androidx.fragment.app.c.l (androidx.fragment.app.c$l)
.class Landroidx/fragment/app/c$l;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/c0$e;

.field private final b:Landroidx/core/os/e;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c0$e;Landroidx/core/os/e;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/c$l;->a:Landroidx/fragment/app/c0$e;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/c$l;->b:Landroidx/core/os/e;

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$l;->a:Landroidx/fragment/app/c0$e;

    iget-object v1, p0, Landroidx/fragment/app/c$l;->b:Landroidx/core/os/e;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/c0$e;->d(Landroidx/core/os/e;)V

    return-void
.end method

.method b()Landroidx/fragment/app/c0$e;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$l;->a:Landroidx/fragment/app/c0$e;

    return-object v0
.end method

.method c()Landroidx/core/os/e;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$l;->b:Landroidx/core/os/e;

    return-object v0
.end method

.method d()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$l;->a:Landroidx/fragment/app/c0$e;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 3
    invoke-static {v0}, Landroidx/fragment/app/c0$e$c;->f(Landroid/view/View;)Landroidx/fragment/app/c0$e$c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/c$l;->a:Landroidx/fragment/app/c0$e;

    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;

    move-result-object v1

    if-eq v0, v1, :cond_1d

    .line 5
    sget-object v2, Landroidx/fragment/app/c0$e$c;->p:Landroidx/fragment/app/c0$e$c;

    if-eq v0, v2, :cond_1b

    if-eq v1, v2, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    return v0
.end method

###### Class androidx.fragment.app.c.m (androidx.fragment.app.c$m)
.class Landroidx/fragment/app/c$m;
.super Landroidx/fragment/app/c$l;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:Z

.field private final e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c0$e;Landroidx/core/os/e;ZZ)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/c$l;-><init>(Landroidx/fragment/app/c0$e;Landroidx/core/os/e;)V

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;

    move-result-object p2

    sget-object v0, Landroidx/fragment/app/c0$e$c;->p:Landroidx/fragment/app/c0$e$c;

    if-ne p2, v0, :cond_36

    if-eqz p3, :cond_16

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p2

    goto :goto_1e

    .line 4
    :cond_16
    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p2

    :goto_1e
    iput-object p2, p0, Landroidx/fragment/app/c$m;->c:Ljava/lang/Object;

    if-eqz p3, :cond_2b

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p2

    goto :goto_33

    .line 6
    :cond_2b
    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p2

    :goto_33
    iput-boolean p2, p0, Landroidx/fragment/app/c$m;->d:Z

    goto :goto_4e

    :cond_36
    if-eqz p3, :cond_41

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p2

    goto :goto_49

    .line 8
    :cond_41
    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p2

    :goto_49
    iput-object p2, p0, Landroidx/fragment/app/c$m;->c:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Landroidx/fragment/app/c$m;->d:Z

    :goto_4e
    if-eqz p4, :cond_68

    if-eqz p3, :cond_5d

    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/c$m;->e:Ljava/lang/Object;

    goto :goto_6b

    .line 11
    :cond_5d
    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/c$m;->e:Ljava/lang/Object;

    goto :goto_6b

    :cond_68
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Landroidx/fragment/app/c$m;->e:Ljava/lang/Object;

    :goto_6b
    return-void
.end method

.method private f(Ljava/lang/Object;)Landroidx/fragment/app/z;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    sget-object v0, Landroidx/fragment/app/x;->b:Landroidx/fragment/app/z;

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/z;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    .line 3
    :cond_f
    sget-object v0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/z;

    if-eqz v0, :cond_1a

    .line 4
    invoke-virtual {v0, p1}, Landroidx/fragment/app/z;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-object v0

    .line 5
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method e()Landroidx/fragment/app/z;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$m;->c:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/fragment/app/c$m;->f(Ljava/lang/Object;)Landroidx/fragment/app/z;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/c$m;->e:Ljava/lang/Object;

    .line 3
    invoke-direct {p0, v1}, Landroidx/fragment/app/c$m;->f(Ljava/lang/Object;)Landroidx/fragment/app/z;

    move-result-object v1

    if-eqz v0, :cond_46

    if-eqz v1, :cond_46

    if-ne v0, v1, :cond_13

    goto :goto_46

    .line 4
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/c$m;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/c$m;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    :goto_46
    if-eqz v0, :cond_49

    goto :goto_4a

    :cond_49
    move-object v0, v1

    :goto_4a
    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$m;->e:Ljava/lang/Object;

    return-object v0
.end method

.method h()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$m;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$m;->e:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method j()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c$m;->d:Z

    return v0
.end method
