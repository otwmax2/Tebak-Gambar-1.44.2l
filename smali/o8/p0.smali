###### Class o8.p0 (o8.p0)
.class public Lo8/p0;
.super Lo8/o0;
.source "LayoutDialogTgFreeAnswerBindingImpl.java"

# interfaces
.implements Lp8/a$a;


# static fields
.field private static final a0:Landroidx/databinding/ViewDataBinding$i;

.field private static final b0:Landroid/util/SparseIntArray;


# instance fields
.field private final V:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private final W:Landroid/widget/ImageView;

.field private final X:Landroid/view/View$OnClickListener;

.field private final Y:Landroid/view/View$OnClickListener;

.field private Z:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo8/p0;->b0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00ca

    const/4 v2, 0x6

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0067

    const/4 v2, 0x7

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lo8/p0;->a0:Landroidx/databinding/ViewDataBinding$i;

    sget-object v1, Lo8/p0;->b0:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->d0(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo8/p0;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 15

    const/4 v0, 0x7

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/AppCompatButton;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v1, p3, v0

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v4, 0x6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lo8/o0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lo8/p0;->Z:J

    .line 4
    iget-object p1, p0, Lo8/o0;->P:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lo8/o0;->R:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    aget-object p1, p3, p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p1, p0, Lo8/p0;->V:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 8
    aget-object p3, p3, p1

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lo8/p0;->W:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p3, p0, Lo8/o0;->S:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object p3, p0, Lo8/o0;->T:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->p0(Landroid/view/View;)V

    .line 13
    new-instance p2, Lp8/a;

    invoke-direct {p2, p0, v0}, Lp8/a;-><init>(Lp8/a$a;I)V

    iput-object p2, p0, Lo8/p0;->X:Landroid/view/View$OnClickListener;

    .line 14
    new-instance p2, Lp8/a;

    invoke-direct {p2, p0, p1}, Lp8/a;-><init>(Lp8/a$a;I)V

    iput-object p2, p0, Lo8/p0;->Y:Landroid/view/View$OnClickListener;

    .line 15
    invoke-virtual {p0}, Lo8/p0;->Z()V

    return-void
.end method

.method private B0(Landroidx/databinding/l;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/p0;->Z:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/p0;->Z:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private E0(Landroidx/databinding/l;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/p0;->Z:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/p0;->Z:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private F0(Landroidx/databinding/n;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/p0;->Z:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/p0;->Z:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private x0(Landroidx/databinding/m;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/p0;->Z:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/p0;->Z:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private y0(Landroidx/databinding/m;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/p0;->Z:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/p0;->Z:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private z0(Landroidx/databinding/m;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/p0;->Z:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/p0;->Z:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected F()V
    .registers 31

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide v2, v1, Lo8/p0;->Z:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lo8/p0;->Z:J

    .line 4
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_14a

    .line 5
    iget-object v0, v1, Lo8/o0;->U:Lk8/d;

    const-wide/16 v6, 0xff

    and-long/2addr v6, v2

    const-wide/16 v8, 0xd0

    const-wide/16 v12, 0xc4

    const-wide/16 v14, 0xc8

    const-wide/16 v16, 0xc2

    const-wide/16 v18, 0xc1

    const/4 v10, 0x0

    cmp-long v22, v6, v4

    if-eqz v22, :cond_e8

    and-long v6, v2, v18

    cmp-long v22, v6, v4

    if-eqz v22, :cond_36

    if-eqz v0, :cond_29

    .line 6
    iget-object v6, v0, Lk8/d;->E:Landroidx/databinding/m;

    goto :goto_2a

    :cond_29
    const/4 v6, 0x0

    .line 7
    :goto_2a
    invoke-virtual {v1, v10, v6}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v6, :cond_36

    .line 8
    invoke-virtual {v6}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_37

    :cond_36
    const/4 v6, 0x0

    :goto_37
    and-long v22, v2, v16

    cmp-long v24, v22, v4

    if-eqz v24, :cond_62

    if-eqz v0, :cond_42

    .line 9
    iget-object v7, v0, Lk8/d;->H:Landroidx/databinding/l;

    goto :goto_43

    :cond_42
    const/4 v7, 0x0

    :goto_43
    const/4 v10, 0x1

    .line 10
    invoke-virtual {v1, v10, v7}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v7, :cond_4e

    .line 11
    invoke-virtual {v7}, Landroidx/databinding/l;->y()Z

    move-result v7

    goto :goto_4f

    :cond_4e
    const/4 v7, 0x0

    :goto_4f
    cmp-long v10, v22, v4

    if-eqz v10, :cond_5c

    if-eqz v7, :cond_58

    const-wide/16 v22, 0x800

    goto :goto_5a

    :cond_58
    const-wide/16 v22, 0x400

    :goto_5a
    or-long v2, v2, v22

    :cond_5c
    if-eqz v7, :cond_5f

    goto :goto_62

    :cond_5f
    const/16 v7, 0x8

    goto :goto_63

    :cond_62
    :goto_62
    const/4 v7, 0x0

    :goto_63
    and-long v22, v2, v12

    cmp-long v10, v22, v4

    if-eqz v10, :cond_7c

    if-eqz v0, :cond_6e

    .line 12
    iget-object v10, v0, Lk8/d;->C:Landroidx/databinding/m;

    goto :goto_6f

    :cond_6e
    const/4 v10, 0x0

    :goto_6f
    const/4 v11, 0x2

    .line 13
    invoke-virtual {v1, v11, v10}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v10, :cond_7c

    .line 14
    invoke-virtual {v10}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_7d

    :cond_7c
    const/4 v10, 0x0

    :goto_7d
    and-long v25, v2, v14

    cmp-long v11, v25, v4

    if-eqz v11, :cond_94

    if-eqz v0, :cond_88

    .line 15
    iget-object v11, v0, Lk8/d;->F:Landroidx/databinding/n;

    goto :goto_89

    :cond_88
    const/4 v11, 0x0

    :goto_89
    const/4 v12, 0x3

    .line 16
    invoke-virtual {v1, v12, v11}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v11, :cond_94

    .line 17
    invoke-virtual {v11}, Landroidx/databinding/n;->y()I

    move-result v11

    goto :goto_95

    :cond_94
    const/4 v11, 0x0

    :goto_95
    and-long v12, v2, v8

    cmp-long v23, v12, v4

    if-eqz v23, :cond_ae

    if-eqz v0, :cond_a0

    .line 18
    iget-object v12, v0, Lk8/d;->D:Landroidx/databinding/m;

    goto :goto_a1

    :cond_a0
    const/4 v12, 0x0

    :goto_a1
    const/4 v13, 0x4

    .line 19
    invoke-virtual {v1, v13, v12}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v12, :cond_ae

    .line 20
    invoke-virtual {v12}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_af

    :cond_ae
    const/4 v12, 0x0

    :goto_af
    const-wide/16 v20, 0xe0

    and-long v27, v2, v20

    cmp-long v13, v27, v4

    if-eqz v13, :cond_e0

    if-eqz v0, :cond_bc

    .line 21
    iget-object v0, v0, Lk8/d;->G:Landroidx/databinding/l;

    goto :goto_bd

    :cond_bc
    const/4 v0, 0x0

    :goto_bd
    const/4 v13, 0x5

    .line 22
    invoke-virtual {v1, v13, v0}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v0, :cond_c8

    .line 23
    invoke-virtual {v0}, Landroidx/databinding/l;->y()Z

    move-result v0

    goto :goto_c9

    :cond_c8
    const/4 v0, 0x0

    :goto_c9
    cmp-long v13, v27, v4

    if-eqz v13, :cond_d6

    if-eqz v0, :cond_d2

    const-wide/16 v22, 0x200

    goto :goto_d4

    :cond_d2
    const-wide/16 v22, 0x100

    :goto_d4
    or-long v2, v2, v22

    :cond_d6
    if-eqz v0, :cond_db

    const/16 v24, 0x0

    goto :goto_dd

    :cond_db
    const/16 v24, 0x8

    :goto_dd
    move/from16 v0, v24

    goto :goto_e1

    :cond_e0
    const/4 v0, 0x0

    :goto_e1
    move/from16 v29, v11

    move-object v11, v6

    move-object v6, v10

    move/from16 v10, v29

    goto :goto_ee

    :cond_e8
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_ee
    const-wide/16 v22, 0x80

    and-long v22, v2, v22

    cmp-long v13, v22, v4

    if-eqz v13, :cond_104

    .line 24
    iget-object v13, v1, Lo8/o0;->P:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v8, v1, Lo8/p0;->X:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v8, v1, Lo8/o0;->R:Landroid/widget/ImageView;

    iget-object v9, v1, Lo8/p0;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_104
    and-long v8, v2, v18

    cmp-long v13, v8, v4

    if-eqz v13, :cond_10f

    .line 26
    iget-object v8, v1, Lo8/o0;->P:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v8, v11}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_10f
    and-long v8, v2, v14

    cmp-long v11, v8, v4

    if-eqz v11, :cond_11a

    .line 27
    iget-object v8, v1, Lo8/o0;->P:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setTextColor(I)V

    :cond_11a
    const-wide/16 v8, 0xe0

    and-long/2addr v8, v2

    cmp-long v10, v8, v4

    if-eqz v10, :cond_126

    .line 28
    iget-object v8, v1, Lo8/o0;->R:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_126
    and-long v8, v2, v16

    cmp-long v0, v8, v4

    if-eqz v0, :cond_131

    .line 29
    iget-object v0, v1, Lo8/p0;->W:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_131
    const-wide/16 v7, 0xc4

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_13d

    .line 30
    iget-object v0, v1, Lo8/o0;->S:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v6}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_13d
    const-wide/16 v6, 0xd0

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_149

    .line 31
    iget-object v0, v1, Lo8/o0;->T:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v12}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_149
    return-void

    :catchall_14a
    move-exception v0

    .line 32
    :try_start_14b
    monitor-exit p0
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_14a

    throw v0
.end method

.method public W()Z
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/p0;->Z:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_c
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public Z()V
    .registers 3

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x80

    .line 2
    :try_start_3
    iput-wide v0, p0, Lo8/p0;->Z:J

    .line 3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->k0()V

    return-void

    :catchall_a
    move-exception v0

    .line 5
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected e0(ILjava/lang/Object;I)Z
    .registers 5

    if-eqz p1, :cond_36

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_28

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_13

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_13
    check-cast p2, Landroidx/databinding/l;

    invoke-direct {p0, p2, p3}, Lo8/p0;->B0(Landroidx/databinding/l;I)Z

    move-result p1

    return p1

    .line 2
    :cond_1a
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/p0;->y0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 3
    :cond_21
    check-cast p2, Landroidx/databinding/n;

    invoke-direct {p0, p2, p3}, Lo8/p0;->F0(Landroidx/databinding/n;I)Z

    move-result p1

    return p1

    .line 4
    :cond_28
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/p0;->z0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 5
    :cond_2f
    check-cast p2, Landroidx/databinding/l;

    invoke-direct {p0, p2, p3}, Lo8/p0;->E0(Landroidx/databinding/l;I)Z

    move-result p1

    return p1

    .line 6
    :cond_36
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/p0;->x0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1
.end method

.method public final t(ILandroid/view/View;)V
    .registers 5

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    goto :goto_1d

    .line 1
    :cond_8
    iget-object p1, p0, Lo8/o0;->U:Lk8/d;

    if-eqz p1, :cond_d

    const/4 p2, 0x1

    :cond_d
    if-eqz p2, :cond_1d

    .line 2
    invoke-virtual {p1}, Lk8/d;->K()V

    goto :goto_1d

    .line 3
    :cond_13
    iget-object p1, p0, Lo8/o0;->U:Lk8/d;

    if-eqz p1, :cond_18

    const/4 p2, 0x1

    :cond_18
    if-eqz p2, :cond_1d

    .line 4
    invoke-virtual {p1}, Lk8/d;->E()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public w0(Lk8/d;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lo8/o0;->U:Lk8/d;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lo8/p0;->Z:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo8/p0;->Z:J

    .line 4
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_13

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->x(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k0()V

    return-void

    :catchall_13
    move-exception p1

    .line 7
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method
