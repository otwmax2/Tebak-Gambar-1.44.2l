###### Class o8.d (o8.d)
.class public Lo8/d;
.super Lo8/c;
.source "ActivityEditFrameBindingImpl.java"


# static fields
.field private static final k0:Landroidx/databinding/ViewDataBinding$i;

.field private static final l0:Landroid/util/SparseIntArray;


# instance fields
.field private j0:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$i;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$i;-><init>(I)V

    sput-object v0, Lo8/d;->k0:Landroidx/databinding/ViewDataBinding$i;

    const-string v1, "header_normal"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    new-array v2, v2, [I

    const v5, 0x7f0d004e

    aput v5, v2, v4

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$i;->a(I[Ljava/lang/String;[I[I)V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo8/d;->l0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0233

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0219

    const/4 v2, 0x3

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a008b

    const/4 v2, 0x4

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0076

    const/4 v2, 0x5

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a021c

    const/4 v2, 0x6

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00a2

    const/4 v2, 0x7

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0151

    const/16 v2, 0x8

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0122

    const/16 v2, 0x9

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a031e

    const/16 v2, 0xa

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a022c

    const/16 v2, 0xb

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0166

    const/16 v2, 0xc

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a021b

    const/16 v2, 0xd

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0098

    const/16 v2, 0xe

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a02d2

    const/16 v2, 0xf

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0099

    const/16 v2, 0x10

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0081

    const/16 v2, 0x11

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0095

    const/16 v2, 0x12

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0093

    const/16 v2, 0x13

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0120

    const/16 v2, 0x14

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lo8/d;->k0:Landroidx/databinding/ViewDataBinding$i;

    sget-object v1, Lo8/d;->l0:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->d0(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo8/d;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 30

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x5

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Lcom/tebakgambar/component/CustomButton;

    const/16 v5, 0x11

    aget-object v5, p3, v5

    check-cast v5, Lcom/tebakgambar/component/CustomButton;

    const/4 v6, 0x4

    aget-object v6, p3, v6

    check-cast v6, Lcom/tebakgambar/component/CustomButton;

    const/16 v7, 0x13

    aget-object v7, p3, v7

    check-cast v7, Lcom/tebakgambar/component/CustomButton;

    const/16 v8, 0x12

    aget-object v8, p3, v8

    check-cast v8, Lcom/tebakgambar/component/CustomButton;

    const/16 v9, 0xe

    aget-object v9, p3, v9

    check-cast v9, Lcom/tebakgambar/component/CustomButton;

    const/16 v10, 0x10

    aget-object v10, p3, v10

    check-cast v10, Lcom/tebakgambar/component/CustomButton;

    const/4 v11, 0x7

    aget-object v11, p3, v11

    check-cast v11, Landroid/view/View;

    const/16 v12, 0x14

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/FrameLayout;

    const/16 v13, 0x9

    aget-object v13, p3, v13

    check-cast v13, Lcom/framer/FrameView;

    const/16 v14, 0x8

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/ImageView;

    const/16 v15, 0xc

    aget-object v15, p3, v15

    check-cast v15, Landroid/widget/ImageView;

    const/16 v16, 0x3

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/RelativeLayout;

    const/16 v17, 0xd

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/RelativeLayout;

    const/16 v18, 0x6

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/RelativeLayout;

    const/16 v19, 0x0

    aget-object v19, p3, v19

    check-cast v19, Landroid/widget/RelativeLayout;

    const/16 v20, 0xb

    aget-object v20, p3, v20

    check-cast v20, Landroid/widget/RelativeLayout;

    const/16 v21, 0x1

    aget-object v21, p3, v21

    check-cast v21, Lo8/e0;

    const/16 v22, 0x2

    aget-object v22, p3, v22

    check-cast v22, Landroid/widget/RelativeLayout;

    const/16 v23, 0xf

    aget-object v23, p3, v23

    check-cast v23, Lcom/tebakgambar/component/CustomTextView;

    const/16 v24, 0xa

    aget-object v24, p3, v24

    check-cast v24, Landroid/view/View;

    const/16 v25, 0x1

    move/from16 v3, v25

    invoke-direct/range {v0 .. v24}, Lo8/c;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/tebakgambar/component/CustomButton;Lcom/tebakgambar/component/CustomButton;Lcom/tebakgambar/component/CustomButton;Lcom/tebakgambar/component/CustomButton;Lcom/tebakgambar/component/CustomButton;Lcom/tebakgambar/component/CustomButton;Lcom/tebakgambar/component/CustomButton;Landroid/view/View;Landroid/widget/FrameLayout;Lcom/framer/FrameView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lo8/e0;Landroid/widget/RelativeLayout;Lcom/tebakgambar/component/CustomTextView;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lo8/d;->j0:J

    .line 4
    iget-object v0, v2, Lo8/c;->d0:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lo8/c;->f0:Lo8/e0;

    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->o0(Landroidx/databinding/ViewDataBinding;)V

    move-object/from16 v0, p2

    .line 6
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->p0(Landroid/view/View;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lo8/d;->Z()V

    return-void
.end method

.method private u0(Lo8/e0;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/d;->j0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/d;->j0:J

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
    .registers 3

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 2
    :try_start_3
    iput-wide v0, p0, Lo8/d;->j0:J

    .line 3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 4
    iget-object v0, p0, Lo8/c;->f0:Lo8/e0;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->H(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_c
    move-exception v0

    .line 5
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public W()Z
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/d;->j0:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_c

    .line 3
    monitor-exit p0

    return v4

    .line 4
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    .line 5
    iget-object v0, p0, Lo8/c;->f0:Lo8/e0;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->W()Z

    move-result v0

    if-eqz v0, :cond_16

    return v4

    :cond_16
    const/4 v0, 0x0

    return v0

    :catchall_18
    move-exception v0

    .line 6
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public Z()V
    .registers 3

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 2
    :try_start_3
    iput-wide v0, p0, Lo8/d;->j0:J

    .line 3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 4
    iget-object v0, p0, Lo8/c;->f0:Lo8/e0;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->Z()V

    .line 5
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->k0()V

    return-void

    :catchall_f
    move-exception v0

    .line 6
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected e0(ILjava/lang/Object;I)Z
    .registers 4

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_4
    check-cast p2, Lo8/e0;

    invoke-direct {p0, p2, p3}, Lo8/d;->u0(Lo8/e0;I)Z

    move-result p1

    return p1
.end method
