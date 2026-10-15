###### Class o8.r0 (o8.r0)
.class public Lo8/r0;
.super Lo8/q0;
.source "LayoutDialogTgInAppReviewBindingImpl.java"

# interfaces
.implements Lp8/a$a;


# static fields
.field private static final c0:Landroidx/databinding/ViewDataBinding$i;

.field private static final d0:Landroid/util/SparseIntArray;


# instance fields
.field private final X:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private final Y:Landroid/widget/ImageView;

.field private final Z:Landroid/view/View$OnClickListener;

.field private final a0:Landroid/view/View$OnClickListener;

.field private b0:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo8/r0;->d0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00ca

    const/4 v2, 0x7

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0213

    const/16 v2, 0x8

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0067

    const/16 v2, 0x9

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lo8/r0;->c0:Landroidx/databinding/ViewDataBinding$i;

    sget-object v1, Lo8/r0;->d0:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->d0(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo8/r0;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 18

    move-object v12, p0

    const/16 v0, 0x9

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/RatingBar;

    const/4 v13, 0x2

    aget-object v0, p3, v13

    move-object v9, v0

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x7

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v11}, Lo8/q0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/RatingBar;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v12, Lo8/r0;->b0:J

    .line 4
    iget-object v0, v12, Lo8/q0;->P:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v12, Lo8/q0;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6
    aget-object v0, p3, v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, v12, Lo8/r0;->X:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 8
    aget-object v2, p3, v0

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lo8/r0;->Y:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v2, v12, Lo8/q0;->T:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v2, v12, Lo8/q0;->U:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v2, v12, Lo8/q0;->V:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 13
    invoke-virtual {p0, v1}, Landroidx/databinding/ViewDataBinding;->p0(Landroid/view/View;)V

    .line 14
    new-instance v1, Lp8/a;

    invoke-direct {v1, p0, v13}, Lp8/a;-><init>(Lp8/a$a;I)V

    iput-object v1, v12, Lo8/r0;->Z:Landroid/view/View$OnClickListener;

    .line 15
    new-instance v1, Lp8/a;

    invoke-direct {v1, p0, v0}, Lp8/a;-><init>(Lp8/a$a;I)V

    iput-object v1, v12, Lo8/r0;->a0:Landroid/view/View$OnClickListener;

    .line 16
    invoke-virtual {p0}, Lo8/r0;->Z()V

    return-void
.end method

.method private B0(Landroidx/databinding/m;I)Z
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
    iget-wide p1, p0, Lo8/r0;->b0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/r0;->b0:J

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
    iget-wide p1, p0, Lo8/r0;->b0:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/r0;->b0:J

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

.method private F0(Landroidx/databinding/l;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/r0;->b0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/r0;->b0:J

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

.method private K0(Landroidx/databinding/n;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/r0;->b0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/r0;->b0:J

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
    iget-wide p1, p0, Lo8/r0;->b0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/r0;->b0:J

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
    iget-wide p1, p0, Lo8/r0;->b0:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/r0;->b0:J

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
    iget-wide p1, p0, Lo8/r0;->b0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/r0;->b0:J

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
    .registers 35

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide v2, v1, Lo8/r0;->b0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lo8/r0;->b0:J

    .line 4
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_175

    .line 5
    iget-object v0, v1, Lo8/q0;->W:Ll8/e;

    const-wide/16 v6, 0x1ff

    and-long/2addr v6, v2

    const-wide/16 v8, 0x1a0

    const-wide/16 v10, 0x188

    const-wide/16 v14, 0x184

    const-wide/16 v16, 0x190

    const-wide/16 v18, 0x182

    const-wide/16 v20, 0x181

    const/4 v12, 0x0

    cmp-long v24, v6, v4

    if-eqz v24, :cond_109

    and-long v6, v2, v20

    cmp-long v24, v6, v4

    if-eqz v24, :cond_38

    if-eqz v0, :cond_2b

    .line 6
    iget-object v6, v0, Ll8/e;->F:Landroidx/databinding/m;

    goto :goto_2c

    :cond_2b
    const/4 v6, 0x0

    .line 7
    :goto_2c
    invoke-virtual {v1, v12, v6}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v6, :cond_38

    .line 8
    invoke-virtual {v6}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_39

    :cond_38
    const/4 v6, 0x0

    :goto_39
    and-long v24, v2, v18

    cmp-long v26, v24, v4

    if-eqz v26, :cond_64

    if-eqz v0, :cond_44

    .line 9
    iget-object v7, v0, Ll8/e;->I:Landroidx/databinding/l;

    goto :goto_45

    :cond_44
    const/4 v7, 0x0

    :goto_45
    const/4 v12, 0x1

    .line 10
    invoke-virtual {v1, v12, v7}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v7, :cond_50

    .line 11
    invoke-virtual {v7}, Landroidx/databinding/l;->y()Z

    move-result v7

    goto :goto_51

    :cond_50
    const/4 v7, 0x0

    :goto_51
    cmp-long v12, v24, v4

    if-eqz v12, :cond_5e

    if-eqz v7, :cond_5a

    const-wide/16 v24, 0x1000

    goto :goto_5c

    :cond_5a
    const-wide/16 v24, 0x800

    :goto_5c
    or-long v2, v2, v24

    :cond_5e
    if-eqz v7, :cond_61

    goto :goto_64

    :cond_61
    const/16 v7, 0x8

    goto :goto_65

    :cond_64
    :goto_64
    const/4 v7, 0x0

    :goto_65
    and-long v24, v2, v14

    cmp-long v12, v24, v4

    if-eqz v12, :cond_7e

    if-eqz v0, :cond_70

    .line 12
    iget-object v12, v0, Ll8/e;->D:Landroidx/databinding/m;

    goto :goto_71

    :cond_70
    const/4 v12, 0x0

    :goto_71
    const/4 v13, 0x2

    .line 13
    invoke-virtual {v1, v13, v12}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v12, :cond_7e

    .line 14
    invoke-virtual {v12}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_7f

    :cond_7e
    const/4 v12, 0x0

    :goto_7f
    and-long v27, v2, v10

    cmp-long v13, v27, v4

    if-eqz v13, :cond_98

    if-eqz v0, :cond_8a

    .line 15
    iget-object v13, v0, Ll8/e;->C:Landroidx/databinding/m;

    goto :goto_8b

    :cond_8a
    const/4 v13, 0x0

    :goto_8b
    const/4 v14, 0x3

    .line 16
    invoke-virtual {v1, v14, v13}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v13, :cond_98

    .line 17
    invoke-virtual {v13}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_99

    :cond_98
    const/4 v13, 0x0

    :goto_99
    and-long v14, v2, v16

    cmp-long v25, v14, v4

    if-eqz v25, :cond_b0

    if-eqz v0, :cond_a4

    .line 18
    iget-object v14, v0, Ll8/e;->G:Landroidx/databinding/n;

    goto :goto_a5

    :cond_a4
    const/4 v14, 0x0

    :goto_a5
    const/4 v15, 0x4

    .line 19
    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v14, :cond_b0

    .line 20
    invoke-virtual {v14}, Landroidx/databinding/n;->y()I

    move-result v14

    goto :goto_b1

    :cond_b0
    const/4 v14, 0x0

    :goto_b1
    and-long v29, v2, v8

    cmp-long v15, v29, v4

    if-eqz v15, :cond_ca

    if-eqz v0, :cond_bc

    .line 21
    iget-object v15, v0, Ll8/e;->E:Landroidx/databinding/m;

    goto :goto_bd

    :cond_bc
    const/4 v15, 0x0

    :goto_bd
    const/4 v8, 0x5

    .line 22
    invoke-virtual {v1, v8, v15}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v15, :cond_ca

    .line 23
    invoke-virtual {v15}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_cb

    :cond_ca
    const/4 v8, 0x0

    :goto_cb
    const-wide/16 v22, 0x1c0

    and-long v31, v2, v22

    cmp-long v9, v31, v4

    if-eqz v9, :cond_ff

    if-eqz v0, :cond_d8

    .line 24
    iget-object v0, v0, Ll8/e;->H:Landroidx/databinding/l;

    goto :goto_d9

    :cond_d8
    const/4 v0, 0x0

    :goto_d9
    const/4 v9, 0x6

    .line 25
    invoke-virtual {v1, v9, v0}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v0, :cond_e4

    .line 26
    invoke-virtual {v0}, Landroidx/databinding/l;->y()Z

    move-result v0

    goto :goto_e5

    :cond_e4
    const/4 v0, 0x0

    :goto_e5
    cmp-long v9, v31, v4

    if-eqz v9, :cond_f2

    if-eqz v0, :cond_ee

    const-wide/16 v24, 0x400

    goto :goto_f0

    :cond_ee
    const-wide/16 v24, 0x200

    :goto_f0
    or-long v2, v2, v24

    :cond_f2
    if-eqz v0, :cond_f7

    const/16 v26, 0x0

    goto :goto_f9

    :cond_f7
    const/16 v26, 0x8

    :goto_f9
    move-object v9, v8

    move-object v8, v12

    move v12, v14

    move/from16 v0, v26

    goto :goto_103

    :cond_ff
    move-object v9, v8

    move-object v8, v12

    move v12, v14

    const/4 v0, 0x0

    :goto_103
    move-object/from16 v33, v13

    move-object v13, v6

    move-object/from16 v6, v33

    goto :goto_110

    :cond_109
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_110
    const-wide/16 v14, 0x100

    and-long/2addr v14, v2

    cmp-long v24, v14, v4

    if-eqz v24, :cond_125

    .line 27
    iget-object v14, v1, Lo8/q0;->P:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v15, v1, Lo8/r0;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v14, v1, Lo8/q0;->R:Landroid/widget/ImageView;

    iget-object v15, v1, Lo8/r0;->a0:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_125
    and-long v14, v2, v20

    cmp-long v20, v14, v4

    if-eqz v20, :cond_130

    .line 29
    iget-object v14, v1, Lo8/q0;->P:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v14, v13}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_130
    and-long v13, v2, v16

    cmp-long v15, v13, v4

    if-eqz v15, :cond_13b

    .line 30
    iget-object v13, v1, Lo8/q0;->P:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v13, v12}, Landroid/widget/Button;->setTextColor(I)V

    :cond_13b
    const-wide/16 v12, 0x1c0

    and-long/2addr v12, v2

    cmp-long v14, v12, v4

    if-eqz v14, :cond_147

    .line 31
    iget-object v12, v1, Lo8/q0;->R:Landroid/widget/ImageView;

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_147
    and-long v12, v2, v18

    cmp-long v0, v12, v4

    if-eqz v0, :cond_152

    .line 32
    iget-object v0, v1, Lo8/r0;->Y:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_152
    and-long/2addr v10, v2

    cmp-long v0, v10, v4

    if-eqz v0, :cond_15c

    .line 33
    iget-object v0, v1, Lo8/q0;->T:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v6}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_15c
    const-wide/16 v6, 0x184

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_168

    .line 34
    iget-object v0, v1, Lo8/q0;->U:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v8}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_168
    const-wide/16 v6, 0x1a0

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_174

    .line 35
    iget-object v0, v1, Lo8/q0;->V:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v9}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_174
    return-void

    :catchall_175
    move-exception v0

    .line 36
    :try_start_176
    monitor-exit p0
    :try_end_177
    .catchall {:try_start_176 .. :try_end_177} :catchall_175

    throw v0
.end method

.method public W()Z
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/r0;->b0:J

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

    const-wide/16 v0, 0x100

    .line 2
    :try_start_3
    iput-wide v0, p0, Lo8/r0;->b0:J

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
    .registers 4

    packed-switch p1, :pswitch_data_36

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_5
    check-cast p2, Landroidx/databinding/l;

    invoke-direct {p0, p2, p3}, Lo8/r0;->E0(Landroidx/databinding/l;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_c
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/r0;->y0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 3
    :pswitch_13
    check-cast p2, Landroidx/databinding/n;

    invoke-direct {p0, p2, p3}, Lo8/r0;->K0(Landroidx/databinding/n;I)Z

    move-result p1

    return p1

    .line 4
    :pswitch_1a
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/r0;->z0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 5
    :pswitch_21
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/r0;->B0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 6
    :pswitch_28
    check-cast p2, Landroidx/databinding/l;

    invoke-direct {p0, p2, p3}, Lo8/r0;->F0(Landroidx/databinding/l;I)Z

    move-result p1

    return p1

    .line 7
    :pswitch_2f
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/r0;->x0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_28
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_c
        :pswitch_5
    .end packed-switch
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
    iget-object p1, p0, Lo8/q0;->W:Ll8/e;

    if-eqz p1, :cond_d

    const/4 p2, 0x1

    :cond_d
    if-eqz p2, :cond_1d

    .line 2
    invoke-virtual {p1}, Ll8/e;->L()V

    goto :goto_1d

    .line 3
    :cond_13
    iget-object p1, p0, Lo8/q0;->W:Ll8/e;

    if-eqz p1, :cond_18

    const/4 p2, 0x1

    :cond_18
    if-eqz p2, :cond_1d

    .line 4
    invoke-virtual {p1}, Ll8/e;->E()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public w0(Ll8/e;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lo8/q0;->W:Ll8/e;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lo8/r0;->b0:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo8/r0;->b0:J

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
