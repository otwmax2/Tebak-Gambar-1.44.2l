###### Class o8.p (o8.p)
.class public Lo8/p;
.super Lo8/o;
.source "ActivityRegularQuestionBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo8/p$e;,
        Lo8/p$d;,
        Lo8/p$c;,
        Lo8/p$b;,
        Lo8/p$f;
    }
.end annotation


# static fields
.field private static final y0:Landroidx/databinding/ViewDataBinding$i;

.field private static final z0:Landroid/util/SparseIntArray;


# instance fields
.field private final p0:Landroid/widget/RelativeLayout;

.field private final q0:Landroid/widget/Button;

.field private r0:Lo8/p$f;

.field private s0:Lo8/p$b;

.field private t0:Lo8/p$c;

.field private u0:Lo8/p$d;

.field private v0:Lo8/p$e;

.field private w0:Landroidx/databinding/h;

.field private x0:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo8/p;->z0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0225

    const/16 v2, 0x9

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a021b

    const/16 v2, 0xa

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0098

    const/16 v2, 0xb

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a019b

    const/16 v2, 0xc

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a018e

    const/16 v2, 0xd

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a02c3

    const/16 v2, 0xe

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0120

    const/16 v2, 0xf

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a024f

    const/16 v2, 0x10

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a019e

    const/16 v2, 0x11

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a021e

    const/16 v2, 0x12

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0196

    const/16 v2, 0x13

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a022a

    const/16 v2, 0x14

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a02d8

    const/16 v2, 0x15

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a022d

    const/16 v2, 0x16

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a02e4

    const/16 v2, 0x17

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a015e

    const/16 v2, 0x18

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0164

    const/16 v2, 0x19

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0152

    const/16 v2, 0x1a

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lo8/p;->y0:Landroidx/databinding/ViewDataBinding$i;

    sget-object v1, Lo8/p;->z0:Landroid/util/SparseIntArray;

    const/16 v2, 0x1b

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->d0(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo8/p;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 34

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x2

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Lcom/tebakgambar/component/CustomButton;

    const/4 v5, 0x4

    aget-object v5, p3, v5

    check-cast v5, Lcom/tebakgambar/component/CustomButton;

    const/16 v6, 0xb

    aget-object v6, p3, v6

    check-cast v6, Lcom/tebakgambar/component/CustomButton;

    const/4 v7, 0x7

    aget-object v7, p3, v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v8, 0x1

    aget-object v8, p3, v8

    check-cast v8, Lcom/tebakgambar/component/CustomEditText;

    const/16 v9, 0xf

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/FrameLayout;

    const/16 v10, 0x1a

    aget-object v10, p3, v10

    check-cast v10, Lcom/tebakgambar/component/ClickableImageView;

    const/16 v11, 0x8

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/ImageView;

    const/16 v12, 0x18

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/ImageView;

    const/16 v13, 0x19

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/ImageView;

    const/16 v14, 0xd

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/LinearLayout;

    const/4 v15, 0x3

    aget-object v15, p3, v15

    check-cast v15, Landroid/widget/LinearLayout;

    const/16 v16, 0x13

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/LinearLayout;

    const/16 v17, 0xc

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/LinearLayout;

    const/16 v18, 0x11

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/LinearLayout;

    const/16 v19, 0xa

    aget-object v19, p3, v19

    check-cast v19, Landroid/widget/RelativeLayout;

    const/16 v20, 0x12

    aget-object v20, p3, v20

    check-cast v20, Landroid/widget/RelativeLayout;

    const/16 v21, 0x9

    aget-object v21, p3, v21

    check-cast v21, Landroid/widget/RelativeLayout;

    const/16 v22, 0x14

    aget-object v22, p3, v22

    check-cast v22, Landroid/widget/RelativeLayout;

    const/16 v23, 0x16

    aget-object v23, p3, v23

    check-cast v23, Landroid/widget/RelativeLayout;

    const/16 v24, 0x6

    aget-object v24, p3, v24

    check-cast v24, Landroid/widget/RelativeLayout;

    const/16 v25, 0x10

    aget-object v25, p3, v25

    check-cast v25, Landroid/widget/ScrollView;

    const/16 v26, 0xe

    aget-object v26, p3, v26

    check-cast v26, Lcom/tebakgambar/component/CustomTextView;

    const/16 v27, 0x15

    aget-object v27, p3, v27

    check-cast v27, Lcom/tebakgambar/component/CustomTextView;

    const/16 v28, 0x17

    aget-object v28, p3, v28

    check-cast v28, Lcom/tebakgambar/component/CustomTextView;

    const/16 v29, 0x4

    move/from16 v3, v29

    invoke-direct/range {v0 .. v28}, Lo8/o;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/tebakgambar/component/CustomButton;Lcom/tebakgambar/component/CustomButton;Lcom/tebakgambar/component/CustomButton;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/tebakgambar/component/CustomEditText;Landroid/widget/FrameLayout;Lcom/tebakgambar/component/ClickableImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ScrollView;Lcom/tebakgambar/component/CustomTextView;Lcom/tebakgambar/component/CustomTextView;Lcom/tebakgambar/component/CustomTextView;)V

    .line 3
    new-instance v0, Lo8/p$a;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lo8/p$a;-><init>(Lo8/p;)V

    iput-object v0, v1, Lo8/p;->w0:Landroidx/databinding/h;

    const-wide/16 v2, -0x1

    .line 4
    iput-wide v2, v1, Lo8/p;->x0:J

    .line 5
    iget-object v0, v1, Lo8/o;->O:Lcom/tebakgambar/component/CustomButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v1, Lo8/o;->P:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v1, Lo8/o;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v1, Lo8/o;->S:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v1, Lo8/o;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v1, Lo8/o;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 11
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lo8/p;->p0:Landroid/widget/RelativeLayout;

    .line 12
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 13
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lo8/p;->q0:Landroid/widget/Button;

    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v1, Lo8/o;->i0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 16
    invoke-virtual {v1, v0}, Landroidx/databinding/ViewDataBinding;->p0(Landroid/view/View;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lo8/p;->Z()V

    return-void
.end method

.method private B0(Landroidx/databinding/m;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/m<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/p;->x0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/p;->x0:J

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
    iget-wide p1, p0, Lo8/p;->x0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/p;->x0:J

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
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/p;->x0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/p;->x0:J

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
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/p;->x0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/p;->x0:J

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
    .registers 30

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide v2, v1, Lo8/p;->x0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lo8/p;->x0:J

    .line 4
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a7

    .line 5
    iget-object v0, v1, Lo8/o;->o0:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    .line 6
    iget-object v6, v1, Lo8/o;->n0:Lcom/tebakgambar/question/g;

    const-wide/16 v7, 0x50

    and-long v9, v2, v7

    cmp-long v12, v9, v4

    if-eqz v12, :cond_64

    if-eqz v0, :cond_64

    .line 7
    iget-object v9, v1, Lo8/p;->r0:Lo8/p$f;

    if-nez v9, :cond_23

    new-instance v9, Lo8/p$f;

    invoke-direct {v9}, Lo8/p$f;-><init>()V

    iput-object v9, v1, Lo8/p;->r0:Lo8/p$f;

    :cond_23
    invoke-virtual {v9, v0}, Lo8/p$f;->a(Lcom/tebakgambar/question/RegularQuestionActivity$i;)Lo8/p$f;

    move-result-object v9

    .line 8
    iget-object v10, v1, Lo8/p;->s0:Lo8/p$b;

    if-nez v10, :cond_32

    new-instance v10, Lo8/p$b;

    invoke-direct {v10}, Lo8/p$b;-><init>()V

    iput-object v10, v1, Lo8/p;->s0:Lo8/p$b;

    :cond_32
    invoke-virtual {v10, v0}, Lo8/p$b;->a(Lcom/tebakgambar/question/RegularQuestionActivity$i;)Lo8/p$b;

    move-result-object v10

    .line 9
    iget-object v12, v1, Lo8/p;->t0:Lo8/p$c;

    if-nez v12, :cond_41

    new-instance v12, Lo8/p$c;

    invoke-direct {v12}, Lo8/p$c;-><init>()V

    iput-object v12, v1, Lo8/p;->t0:Lo8/p$c;

    :cond_41
    invoke-virtual {v12, v0}, Lo8/p$c;->a(Lcom/tebakgambar/question/RegularQuestionActivity$i;)Lo8/p$c;

    move-result-object v12

    .line 10
    iget-object v13, v1, Lo8/p;->u0:Lo8/p$d;

    if-nez v13, :cond_50

    new-instance v13, Lo8/p$d;

    invoke-direct {v13}, Lo8/p$d;-><init>()V

    iput-object v13, v1, Lo8/p;->u0:Lo8/p$d;

    :cond_50
    invoke-virtual {v13, v0}, Lo8/p$d;->a(Lcom/tebakgambar/question/RegularQuestionActivity$i;)Lo8/p$d;

    move-result-object v13

    .line 11
    iget-object v14, v1, Lo8/p;->v0:Lo8/p$e;

    if-nez v14, :cond_5f

    new-instance v14, Lo8/p$e;

    invoke-direct {v14}, Lo8/p$e;-><init>()V

    iput-object v14, v1, Lo8/p;->v0:Lo8/p$e;

    :cond_5f
    invoke-virtual {v14, v0}, Lo8/p$e;->a(Lcom/tebakgambar/question/RegularQuestionActivity$i;)Lo8/p$e;

    move-result-object v0

    goto :goto_69

    :cond_64
    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_69
    const-wide/16 v14, 0x6f

    and-long/2addr v14, v2

    const-wide/16 v16, 0x64

    const-wide/16 v18, 0x68

    const-wide/16 v20, 0x62

    const-wide/16 v22, 0x61

    const/4 v11, 0x0

    cmp-long v24, v14, v4

    if-eqz v24, :cond_139

    and-long v14, v2, v22

    const/16 v24, 0x8

    cmp-long v25, v14, v4

    if-eqz v25, :cond_ad

    if-eqz v6, :cond_86

    .line 12
    iget-object v7, v6, Lcom/tebakgambar/question/g;->J:Landroidx/databinding/m;

    goto :goto_87

    :cond_86
    const/4 v7, 0x0

    .line 13
    :goto_87
    invoke-virtual {v1, v11, v7}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v7, :cond_93

    .line 14
    invoke-virtual {v7}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    goto :goto_94

    :cond_93
    const/4 v7, 0x0

    .line 15
    :goto_94
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->l0(Ljava/lang/Boolean;)Z

    move-result v7

    cmp-long v8, v14, v4

    if-eqz v8, :cond_a4

    if-eqz v7, :cond_a1

    const-wide/16 v14, 0x1000

    goto :goto_a3

    :cond_a1
    const-wide/16 v14, 0x800

    :goto_a3
    or-long/2addr v2, v14

    :cond_a4
    xor-int/lit8 v8, v7, 0x1

    if-eqz v7, :cond_aa

    const/4 v7, 0x0

    goto :goto_af

    :cond_aa
    const/16 v7, 0x8

    goto :goto_af

    :cond_ad
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_af
    and-long v14, v2, v20

    cmp-long v26, v14, v4

    if-eqz v26, :cond_e1

    if-eqz v6, :cond_ba

    .line 16
    iget-object v11, v6, Lcom/tebakgambar/question/g;->L:Landroidx/databinding/m;

    goto :goto_bb

    :cond_ba
    const/4 v11, 0x0

    :goto_bb
    const/4 v4, 0x1

    .line 17
    invoke-virtual {v1, v4, v11}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v11, :cond_c8

    .line 18
    invoke-virtual {v11}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_c9

    :cond_c8
    const/4 v4, 0x0

    .line 19
    :goto_c9
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->l0(Ljava/lang/Boolean;)Z

    move-result v4

    const-wide/16 v27, 0x0

    cmp-long v5, v14, v27

    if-eqz v5, :cond_db

    if-eqz v4, :cond_d8

    const-wide/16 v14, 0x100

    goto :goto_da

    :cond_d8
    const-wide/16 v14, 0x80

    :goto_da
    or-long/2addr v2, v14

    :cond_db
    if-eqz v4, :cond_de

    goto :goto_e1

    :cond_de
    const/16 v4, 0x8

    goto :goto_e2

    :cond_e1
    :goto_e1
    const/4 v4, 0x0

    :goto_e2
    and-long v14, v2, v16

    const-wide/16 v27, 0x0

    cmp-long v5, v14, v27

    if-eqz v5, :cond_116

    if-eqz v6, :cond_ef

    .line 20
    iget-object v5, v6, Lcom/tebakgambar/question/g;->K:Landroidx/databinding/m;

    goto :goto_f0

    :cond_ef
    const/4 v5, 0x0

    :goto_f0
    const/4 v11, 0x2

    .line 21
    invoke-virtual {v1, v11, v5}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v5, :cond_fd

    .line 22
    invoke-virtual {v5}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    goto :goto_fe

    :cond_fd
    const/4 v5, 0x0

    .line 23
    :goto_fe
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->l0(Ljava/lang/Boolean;)Z

    move-result v5

    const-wide/16 v27, 0x0

    cmp-long v11, v14, v27

    if-eqz v11, :cond_110

    if-eqz v5, :cond_10d

    const-wide/16 v14, 0x400

    goto :goto_10f

    :cond_10d
    const-wide/16 v14, 0x200

    :goto_10f
    or-long/2addr v2, v14

    :cond_110
    if-eqz v5, :cond_113

    goto :goto_116

    :cond_113
    const/16 v11, 0x8

    goto :goto_117

    :cond_116
    :goto_116
    const/4 v11, 0x0

    :goto_117
    and-long v14, v2, v18

    const-wide/16 v26, 0x0

    cmp-long v5, v14, v26

    if-eqz v5, :cond_133

    if-eqz v6, :cond_124

    .line 24
    iget-object v5, v6, Lcom/tebakgambar/question/g;->I:Landroidx/databinding/m;

    goto :goto_125

    :cond_124
    const/4 v5, 0x0

    :goto_125
    const/4 v6, 0x3

    .line 25
    invoke-virtual {v1, v6, v5}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v5, :cond_133

    .line 26
    invoke-virtual {v5}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move v6, v11

    goto :goto_135

    :cond_133
    move v6, v11

    const/4 v5, 0x0

    :goto_135
    const-wide/16 v14, 0x50

    move v11, v8

    goto :goto_13f

    :cond_139
    move-wide v14, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_13f
    and-long/2addr v14, v2

    const-wide/16 v24, 0x0

    cmp-long v8, v14, v24

    if-eqz v8, :cond_15f

    .line 27
    iget-object v8, v1, Lo8/o;->O:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v8, v12}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v8, v1, Lo8/o;->P:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v8, v10}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v8, v1, Lo8/o;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, v1, Lo8/p;->q0:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, v1, Lo8/o;->i0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15f
    and-long v8, v2, v22

    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-eqz v0, :cond_176

    .line 32
    iget-object v0, v1, Lo8/o;->S:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 33
    iget-object v0, v1, Lo8/o;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget-object v0, v1, Lo8/o;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_176
    and-long v7, v2, v18

    cmp-long v0, v7, v12

    if-eqz v0, :cond_181

    .line 35
    iget-object v0, v1, Lo8/o;->S:Lcom/tebakgambar/component/CustomEditText;

    invoke-static {v0, v5}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_181
    const-wide/16 v7, 0x40

    and-long/2addr v7, v2

    cmp-long v0, v7, v12

    if-eqz v0, :cond_190

    .line 36
    iget-object v0, v1, Lo8/o;->S:Lcom/tebakgambar/component/CustomEditText;

    iget-object v5, v1, Lo8/p;->w0:Landroidx/databinding/h;

    const/4 v7, 0x0

    invoke-static {v0, v7, v7, v7, v5}, Ld0/d;->d(Landroid/widget/TextView;Ld0/d$c;Ld0/d$d;Ld0/d$b;Landroidx/databinding/h;)V

    :cond_190
    and-long v7, v2, v20

    cmp-long v0, v7, v12

    if-eqz v0, :cond_19b

    .line 37
    iget-object v0, v1, Lo8/p;->q0:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_19b
    and-long v2, v2, v16

    cmp-long v0, v2, v12

    if-eqz v0, :cond_1a6

    .line 38
    iget-object v0, v1, Lo8/o;->i0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1a6
    return-void

    :catchall_1a7
    move-exception v0

    .line 39
    :try_start_1a8
    monitor-exit p0
    :try_end_1a9
    .catchall {:try_start_1a8 .. :try_end_1a9} :catchall_1a7

    throw v0
.end method

.method public W()Z
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/p;->x0:J

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

    const-wide/16 v0, 0x40

    .line 2
    :try_start_3
    iput-wide v0, p0, Lo8/p;->x0:J

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

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_d
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/p;->x0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 2
    :cond_14
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/p;->y0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 3
    :cond_1b
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/p;->B0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 4
    :cond_22
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/p;->z0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1
.end method

.method public u0(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lo8/o;->o0:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lo8/p;->x0:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo8/p;->x0:J

    .line 4
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_13

    const/4 p1, 0x1

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

.method public w0(Lcom/tebakgambar/question/g;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lo8/o;->n0:Lcom/tebakgambar/question/g;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lo8/p;->x0:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo8/p;->x0:J

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

###### Class o8.p.a (o8.p$a)
.class Lo8/p$a;
.super Ljava/lang/Object;
.source "ActivityRegularQuestionBindingImpl.java"

# interfaces
.implements Landroidx/databinding/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo8/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo8/p;


# direct methods
.method constructor <init>(Lo8/p;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lo8/p$a;->a:Lo8/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 1
    iget-object v0, p0, Lo8/p$a;->a:Lo8/p;

    iget-object v0, v0, Lo8/o;->S:Lcom/tebakgambar/component/CustomEditText;

    invoke-static {v0}, Ld0/d;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lo8/p$a;->a:Lo8/p;

    iget-object v1, v1, Lo8/o;->n0:Lcom/tebakgambar/question/g;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    const/4 v4, 0x1

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    :goto_13
    if-eqz v4, :cond_20

    .line 3
    iget-object v1, v1, Lcom/tebakgambar/question/g;->I:Landroidx/databinding/m;

    if-eqz v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    if-eqz v2, :cond_20

    .line 4
    invoke-virtual {v1, v0}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

###### Class o8.p.b (o8.p$b)
.class public Lo8/p$b;
.super Ljava/lang/Object;
.source "ActivityRegularQuestionBindingImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo8/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tebakgambar/question/RegularQuestionActivity$i;)Lo8/p$b;
    .registers 2

    .line 1
    iput-object p1, p0, Lo8/p$b;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    move-object p1, p0

    :goto_7
    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo8/p$b;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-virtual {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->u(Landroid/view/View;)V

    return-void
.end method

###### Class o8.p.c (o8.p$c)
.class public Lo8/p$c;
.super Ljava/lang/Object;
.source "ActivityRegularQuestionBindingImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo8/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tebakgambar/question/RegularQuestionActivity$i;)Lo8/p$c;
    .registers 2

    .line 1
    iput-object p1, p0, Lo8/p$c;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    move-object p1, p0

    :goto_7
    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo8/p$c;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-virtual {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->s(Landroid/view/View;)V

    return-void
.end method

###### Class o8.p.d (o8.p$d)
.class public Lo8/p$d;
.super Ljava/lang/Object;
.source "ActivityRegularQuestionBindingImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo8/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tebakgambar/question/RegularQuestionActivity$i;)Lo8/p$d;
    .registers 2

    .line 1
    iput-object p1, p0, Lo8/p$d;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    move-object p1, p0

    :goto_7
    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo8/p$d;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-virtual {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->t(Landroid/view/View;)V

    return-void
.end method

###### Class o8.p.e (o8.p$e)
.class public Lo8/p$e;
.super Ljava/lang/Object;
.source "ActivityRegularQuestionBindingImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo8/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tebakgambar/question/RegularQuestionActivity$i;)Lo8/p$e;
    .registers 2

    .line 1
    iput-object p1, p0, Lo8/p$e;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    move-object p1, p0

    :goto_7
    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo8/p$e;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-virtual {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->w(Landroid/view/View;)V

    return-void
.end method

###### Class o8.p.f (o8.p$f)
.class public Lo8/p$f;
.super Ljava/lang/Object;
.source "ActivityRegularQuestionBindingImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo8/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tebakgambar/question/RegularQuestionActivity$i;)Lo8/p$f;
    .registers 2

    .line 1
    iput-object p1, p0, Lo8/p$f;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    move-object p1, p0

    :goto_7
    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo8/p$f;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-virtual {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->v(Landroid/view/View;)V

    return-void
.end method
