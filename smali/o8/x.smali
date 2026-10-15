###### Class o8.x (o8.x)
.class public Lo8/x;
.super Lo8/w;
.source "ActivityStickerCampaignBindingImpl.java"

# interfaces
.implements Lp8/a$a;


# static fields
.field private static final i0:Landroidx/databinding/ViewDataBinding$i;

.field private static final j0:Landroid/util/SparseIntArray;


# instance fields
.field private final d0:Landroid/widget/RelativeLayout;

.field private final e0:Lcom/tebakgambar/component/CustomTextView;

.field private final f0:Landroid/widget/LinearLayout;

.field private final g0:Landroid/view/View$OnClickListener;

.field private h0:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$i;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$i;-><init>(I)V

    sput-object v0, Lo8/x;->i0:Landroidx/databinding/ViewDataBinding$i;

    const-string v1, "header_normal"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0xd

    const/4 v5, 0x0

    aput v4, v3, v5

    new-array v2, v2, [I

    const v4, 0x7f0d004e

    aput v4, v2, v5

    invoke-virtual {v0, v5, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$i;->a(I[Ljava/lang/String;[I[I)V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo8/x;->j0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0185

    const/16 v2, 0xe

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0093

    const/16 v2, 0xf

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a007a

    const/16 v2, 0x10

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lo8/x;->i0:Landroidx/databinding/ViewDataBinding$i;

    sget-object v1, Lo8/x;->j0:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->d0(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo8/x;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 23

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0x10

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const/4 v5, 0x7

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const/16 v6, 0xf

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const/4 v7, 0x5

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const/16 v8, 0xc

    aget-object v8, p3, v8

    check-cast v8, Lcom/tebakgambar/component/CustomButton;

    const/16 v9, 0xe

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    aget-object v10, p3, v15

    check-cast v10, Landroid/widget/ImageView;

    const/16 v11, 0xa

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/RelativeLayout;

    const/16 v12, 0x9

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/RelativeLayout;

    const/16 v13, 0xd

    aget-object v13, p3, v13

    check-cast v13, Lo8/e0;

    const/16 v14, 0x8

    aget-object v14, p3, v14

    check-cast v14, Lcom/tebakgambar/component/CustomTextView;

    const/16 v16, 0x6

    aget-object v16, p3, v16

    check-cast v16, Lcom/tebakgambar/component/CustomTextView;

    move-object/from16 v15, v16

    const/16 v16, 0x4

    aget-object v16, p3, v16

    check-cast v16, Lcom/tebakgambar/component/CustomTextView;

    const/16 v17, 0x3

    aget-object v17, p3, v17

    check-cast v17, Lcom/tebakgambar/component/CustomTextView;

    const/16 v18, 0xf

    move/from16 v3, v18

    invoke-direct/range {v0 .. v17}, Lo8/w;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/tebakgambar/component/CustomButton;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lo8/e0;Lcom/tebakgambar/component/CustomTextView;Lcom/tebakgambar/component/CustomTextView;Lcom/tebakgambar/component/CustomTextView;Lcom/tebakgambar/component/CustomTextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lo8/x;->h0:J

    .line 4
    iget-object v0, v2, Lo8/w;->P:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lo8/w;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lo8/w;->S:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lo8/w;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lo8/x;->d0:Landroid/widget/RelativeLayout;

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xb

    .line 10
    aget-object v0, p3, v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, v2, Lo8/x;->e0:Lcom/tebakgambar/component/CustomTextView;

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 12
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lo8/x;->f0:Landroid/widget/LinearLayout;

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v2, Lo8/w;->V:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v2, Lo8/w;->W:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v2, Lo8/w;->X:Lo8/e0;

    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->o0(Landroidx/databinding/ViewDataBinding;)V

    .line 17
    iget-object v0, v2, Lo8/w;->Y:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v0, v2, Lo8/w;->Z:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v0, v2, Lo8/w;->a0:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v0, v2, Lo8/w;->b0:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 21
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->p0(Landroid/view/View;)V

    .line 22
    new-instance v0, Lp8/a;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lp8/a;-><init>(Lp8/a$a;I)V

    iput-object v0, v2, Lo8/x;->g0:Landroid/view/View$OnClickListener;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lo8/x;->Z()V

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
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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

.method private E0(Landroidx/databinding/n;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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

.method private F0(Landroidx/databinding/m;I)Z
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
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x2000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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

.method private L0(Landroidx/databinding/m;I)Z
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
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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

.method private M0(Landroidx/databinding/n;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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

.method private R0(Landroidx/databinding/l;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x200

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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

.method private S0(Landroidx/databinding/m;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/m<",
            "Landroid/graphics/drawable/GradientDrawable;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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

.method private T0(Landroidx/databinding/m;I)Z
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
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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

.method private U0(Landroidx/databinding/n;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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

.method private V0(Landroidx/databinding/m;I)Z
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
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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

.method private w0(Lo8/e0;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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

.method private x0(Landroidx/databinding/n;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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

.method private z0(Landroidx/databinding/n;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/x;->h0:J

    const-wide/16 v0, 0x4000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/x;->h0:J

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
    .registers 54

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide v2, v1, Lo8/x;->h0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lo8/x;->h0:J

    .line 4
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_2f5

    .line 5
    iget-object v0, v1, Lo8/w;->c0:Lcom/tebakgambar/sticker/n;

    const-wide/32 v6, 0x1fff7

    and-long/2addr v6, v2

    const-wide/32 v14, 0x18100

    const-wide/32 v16, 0x18200

    const-wide/32 v18, 0x18080

    const-wide/32 v20, 0x1a000

    const-wide/32 v22, 0x18010

    const-wide/32 v24, 0x18800

    const-wide/32 v26, 0x18004

    const-wide/32 v28, 0x18002

    const-wide/32 v30, 0x18020

    const-wide/32 v32, 0x18001

    const-wide/32 v34, 0x18040

    const/4 v12, 0x0

    cmp-long v38, v6, v4

    if-eqz v38, :cond_20d

    and-long v6, v2, v32

    cmp-long v38, v6, v4

    if-eqz v38, :cond_4e

    if-eqz v0, :cond_41

    .line 6
    iget-object v6, v0, Lcom/tebakgambar/sticker/n;->E:Landroidx/databinding/m;

    goto :goto_42

    :cond_41
    const/4 v6, 0x0

    .line 7
    :goto_42
    invoke-virtual {v1, v12, v6}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v6, :cond_4e

    .line 8
    invoke-virtual {v6}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4f

    :cond_4e
    const/4 v6, 0x0

    :goto_4f
    and-long v38, v2, v28

    const/4 v7, 0x1

    cmp-long v40, v38, v4

    if-eqz v40, :cond_66

    if-eqz v0, :cond_5b

    .line 9
    iget-object v12, v0, Lcom/tebakgambar/sticker/n;->I:Landroidx/databinding/n;

    goto :goto_5c

    :cond_5b
    const/4 v12, 0x0

    .line 10
    :goto_5c
    invoke-virtual {v1, v7, v12}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v12, :cond_66

    .line 11
    invoke-virtual {v12}, Landroidx/databinding/n;->y()I

    move-result v12

    goto :goto_67

    :cond_66
    const/4 v12, 0x0

    :goto_67
    and-long v39, v2, v26

    cmp-long v41, v39, v4

    if-eqz v41, :cond_80

    if-eqz v0, :cond_72

    .line 12
    iget-object v7, v0, Lcom/tebakgambar/sticker/n;->F:Landroidx/databinding/m;

    goto :goto_73

    :cond_72
    const/4 v7, 0x0

    :goto_73
    const/4 v13, 0x2

    .line 13
    invoke-virtual {v1, v13, v7}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v7, :cond_80

    .line 14
    invoke-virtual {v7}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_81

    :cond_80
    const/4 v7, 0x0

    :goto_81
    and-long v41, v2, v22

    cmp-long v13, v41, v4

    if-eqz v13, :cond_9a

    if-eqz v0, :cond_8c

    .line 15
    iget-object v13, v0, Lcom/tebakgambar/sticker/n;->M:Landroidx/databinding/m;

    goto :goto_8d

    :cond_8c
    const/4 v13, 0x0

    :goto_8d
    const/4 v8, 0x4

    .line 16
    invoke-virtual {v1, v8, v13}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v13, :cond_9a

    .line 17
    invoke-virtual {v13}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_9b

    :cond_9a
    const/4 v8, 0x0

    :goto_9b
    and-long v43, v2, v30

    cmp-long v9, v43, v4

    if-eqz v9, :cond_b2

    if-eqz v0, :cond_a6

    .line 18
    iget-object v9, v0, Lcom/tebakgambar/sticker/n;->G:Landroidx/databinding/n;

    goto :goto_a7

    :cond_a6
    const/4 v9, 0x0

    :goto_a7
    const/4 v13, 0x5

    .line 19
    invoke-virtual {v1, v13, v9}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v9, :cond_b2

    .line 20
    invoke-virtual {v9}, Landroidx/databinding/n;->y()I

    move-result v9

    goto :goto_b3

    :cond_b2
    const/4 v9, 0x0

    :goto_b3
    and-long v43, v2, v34

    cmp-long v13, v43, v4

    if-eqz v13, :cond_ca

    if-eqz v0, :cond_be

    .line 21
    iget-object v13, v0, Lcom/tebakgambar/sticker/n;->H:Landroidx/databinding/n;

    goto :goto_bf

    :cond_be
    const/4 v13, 0x0

    :goto_bf
    const/4 v10, 0x6

    .line 22
    invoke-virtual {v1, v10, v13}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v13, :cond_ca

    .line 23
    invoke-virtual {v13}, Landroidx/databinding/n;->y()I

    move-result v10

    goto :goto_cb

    :cond_ca
    const/4 v10, 0x0

    :goto_cb
    and-long v45, v2, v18

    cmp-long v13, v45, v4

    if-eqz v13, :cond_101

    if-eqz v0, :cond_d6

    .line 24
    iget-object v13, v0, Lcom/tebakgambar/sticker/n;->D:Landroidx/databinding/m;

    goto :goto_d7

    :cond_d6
    const/4 v13, 0x0

    :goto_d7
    const/4 v11, 0x7

    .line 25
    invoke-virtual {v1, v11, v13}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v13, :cond_e4

    .line 26
    invoke-virtual {v13}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_e5

    :cond_e4
    const/4 v11, 0x0

    :goto_e5
    if-eqz v11, :cond_ea

    const/16 v39, 0x1

    goto :goto_ec

    :cond_ea
    const/16 v39, 0x0

    :goto_ec
    cmp-long v13, v45, v4

    if-eqz v13, :cond_fb

    if-eqz v39, :cond_f6

    const-wide/32 v45, 0x40000

    goto :goto_f9

    :cond_f6
    const-wide/32 v45, 0x20000

    :goto_f9
    or-long v2, v2, v45

    :cond_fb
    if-eqz v39, :cond_fe

    goto :goto_102

    :cond_fe
    const/16 v13, 0x8

    goto :goto_103

    :cond_101
    const/4 v11, 0x0

    :goto_102
    const/4 v13, 0x0

    :goto_103
    and-long v45, v2, v14

    cmp-long v39, v45, v4

    if-eqz v39, :cond_11b

    if-eqz v0, :cond_10e

    .line 27
    iget-object v14, v0, Lcom/tebakgambar/sticker/n;->P:Landroidx/databinding/n;

    goto :goto_10f

    :cond_10e
    const/4 v14, 0x0

    :goto_10f
    const/16 v15, 0x8

    .line 28
    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v14, :cond_11d

    .line 29
    invoke-virtual {v14}, Landroidx/databinding/n;->y()I

    move-result v14

    goto :goto_11e

    :cond_11b
    const/16 v15, 0x8

    :cond_11d
    const/4 v14, 0x0

    :goto_11e
    and-long v47, v2, v16

    cmp-long v39, v47, v4

    if-eqz v39, :cond_153

    if-eqz v0, :cond_129

    .line 30
    iget-object v15, v0, Lcom/tebakgambar/sticker/n;->C:Landroidx/databinding/l;

    goto :goto_12a

    :cond_129
    const/4 v15, 0x0

    :goto_12a
    const/16 v4, 0x9

    .line 31
    invoke-virtual {v1, v4, v15}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v15, :cond_136

    .line 32
    invoke-virtual {v15}, Landroidx/databinding/l;->y()Z

    move-result v4

    goto :goto_137

    :cond_136
    const/4 v4, 0x0

    :goto_137
    const-wide/16 v49, 0x0

    cmp-long v5, v47, v49

    if-eqz v5, :cond_148

    if-eqz v4, :cond_143

    const-wide/32 v47, 0x100000

    goto :goto_146

    :cond_143
    const-wide/32 v47, 0x80000

    :goto_146
    or-long v2, v2, v47

    :cond_148
    if-eqz v4, :cond_14d

    const/16 v39, 0x0

    goto :goto_14f

    :cond_14d
    const/16 v39, 0x8

    :goto_14f
    const-wide/32 v4, 0x18400

    goto :goto_158

    :cond_153
    const-wide/32 v4, 0x18400

    const/16 v39, 0x0

    :goto_158
    and-long v47, v2, v4

    const-wide/16 v4, 0x0

    cmp-long v15, v47, v4

    if-eqz v15, :cond_174

    if-eqz v0, :cond_165

    .line 33
    iget-object v4, v0, Lcom/tebakgambar/sticker/n;->O:Landroidx/databinding/m;

    goto :goto_166

    :cond_165
    const/4 v4, 0x0

    :goto_166
    const/16 v5, 0xa

    .line 34
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v4, :cond_174

    .line 35
    invoke-virtual {v4}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_175

    :cond_174
    const/4 v4, 0x0

    :goto_175
    and-long v47, v2, v24

    const-wide/16 v49, 0x0

    cmp-long v5, v47, v49

    if-eqz v5, :cond_18f

    if-eqz v0, :cond_182

    .line 36
    iget-object v5, v0, Lcom/tebakgambar/sticker/n;->L:Landroidx/databinding/n;

    goto :goto_183

    :cond_182
    const/4 v5, 0x0

    :goto_183
    const/16 v15, 0xb

    .line 37
    invoke-virtual {v1, v15, v5}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v5, :cond_18f

    .line 38
    invoke-virtual {v5}, Landroidx/databinding/n;->y()I

    move-result v5

    goto :goto_190

    :cond_18f
    const/4 v5, 0x0

    :goto_190
    const-wide/32 v41, 0x19000

    and-long v47, v2, v41

    const-wide/16 v49, 0x0

    cmp-long v15, v47, v49

    if-eqz v15, :cond_1b3

    if-eqz v0, :cond_1a2

    .line 39
    iget-object v15, v0, Lcom/tebakgambar/sticker/n;->N:Landroidx/databinding/m;

    move-object/from16 v47, v4

    goto :goto_1a5

    :cond_1a2
    move-object/from16 v47, v4

    const/4 v15, 0x0

    :goto_1a5
    const/16 v4, 0xc

    .line 40
    invoke-virtual {v1, v4, v15}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v15, :cond_1b5

    .line 41
    invoke-virtual {v15}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1b6

    :cond_1b3
    move-object/from16 v47, v4

    :cond_1b5
    const/4 v4, 0x0

    :goto_1b6
    and-long v51, v2, v20

    const-wide/16 v48, 0x0

    cmp-long v15, v51, v48

    if-eqz v15, :cond_1d6

    if-eqz v0, :cond_1c5

    .line 42
    iget-object v15, v0, Lcom/tebakgambar/sticker/n;->K:Landroidx/databinding/m;

    move-object/from16 v48, v4

    goto :goto_1c8

    :cond_1c5
    move-object/from16 v48, v4

    const/4 v15, 0x0

    :goto_1c8
    const/16 v4, 0xd

    .line 43
    invoke-virtual {v1, v4, v15}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v15, :cond_1d8

    .line 44
    invoke-virtual {v15}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1d9

    :cond_1d6
    move-object/from16 v48, v4

    :cond_1d8
    const/4 v4, 0x0

    :goto_1d9
    const-wide/32 v36, 0x1c000

    and-long v51, v2, v36

    const-wide/16 v49, 0x0

    cmp-long v15, v51, v49

    if-eqz v15, :cond_200

    if-eqz v0, :cond_1e9

    .line 45
    iget-object v0, v0, Lcom/tebakgambar/sticker/n;->J:Landroidx/databinding/n;

    goto :goto_1ea

    :cond_1e9
    const/4 v0, 0x0

    :goto_1ea
    const/16 v15, 0xe

    .line 46
    invoke-virtual {v1, v15, v0}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v0, :cond_200

    .line 47
    invoke-virtual {v0}, Landroidx/databinding/n;->y()I

    move-result v0

    move/from16 v38, v5

    move v15, v12

    move v5, v14

    move v14, v0

    move v12, v10

    move/from16 v10, v39

    move-object/from16 v0, v47

    goto :goto_20a

    :cond_200
    move/from16 v38, v5

    move v15, v12

    move v5, v14

    move-object/from16 v0, v47

    const/4 v14, 0x0

    move v12, v10

    move/from16 v10, v39

    :goto_20a
    move-object/from16 v39, v48

    goto :goto_21e

    :cond_20d
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    :goto_21e
    and-long v34, v2, v34

    const-wide/16 v47, 0x0

    cmp-long v49, v34, v47

    move/from16 v34, v5

    if-eqz v49, :cond_231

    .line 48
    iget-object v5, v1, Lo8/w;->P:Landroid/widget/RelativeLayout;

    invoke-static {v12}, Ld0/a;->a(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v12

    invoke-static {v5, v12}, Ld0/e;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_231
    and-long v30, v2, v30

    cmp-long v5, v30, v47

    if-eqz v5, :cond_240

    .line 49
    iget-object v5, v1, Lo8/w;->R:Landroid/widget/RelativeLayout;

    invoke-static {v9}, Ld0/a;->a(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v9

    invoke-static {v5, v9}, Ld0/e;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_240
    const-wide/32 v30, 0x10000

    and-long v30, v2, v30

    cmp-long v5, v30, v47

    if-eqz v5, :cond_250

    .line 50
    iget-object v5, v1, Lo8/w;->S:Lcom/tebakgambar/component/CustomButton;

    iget-object v9, v1, Lo8/x;->g0:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v9}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_250
    and-long v24, v2, v24

    cmp-long v5, v24, v47

    if-eqz v5, :cond_25f

    .line 51
    iget-object v5, v1, Lo8/w;->U:Landroid/widget/ImageView;

    invoke-static/range {v38 .. v38}, Ld0/a;->a(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v9

    invoke-static {v5, v9}, Ld0/e;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_25f
    and-long v20, v2, v20

    cmp-long v5, v20, v47

    if-eqz v5, :cond_26b

    .line 52
    iget-object v5, v1, Lo8/w;->U:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-static {v5, v4, v9}, Ly8/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_26b
    and-long v4, v2, v18

    cmp-long v9, v4, v47

    if-eqz v9, :cond_27b

    .line 53
    iget-object v4, v1, Lo8/x;->e0:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {v4, v11}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 54
    iget-object v4, v1, Lo8/w;->V:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_27b
    and-long v4, v2, v22

    cmp-long v9, v4, v47

    if-eqz v9, :cond_286

    .line 55
    iget-object v4, v1, Lo8/x;->f0:Landroid/widget/LinearLayout;

    invoke-static {v4, v8}, Ld0/e;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_286
    and-long v4, v2, v16

    cmp-long v8, v4, v47

    if-eqz v8, :cond_291

    .line 56
    iget-object v4, v1, Lo8/w;->W:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_291
    and-long v4, v2, v26

    cmp-long v8, v4, v47

    if-eqz v8, :cond_29c

    .line 57
    iget-object v4, v1, Lo8/w;->Y:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {v4, v7}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_29c
    const-wide/32 v4, 0x1c000

    and-long/2addr v4, v2

    cmp-long v7, v4, v47

    if-eqz v7, :cond_2a9

    .line 58
    iget-object v4, v1, Lo8/w;->Y:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2a9
    and-long v4, v2, v32

    cmp-long v7, v4, v47

    if-eqz v7, :cond_2b4

    .line 59
    iget-object v4, v1, Lo8/w;->Z:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {v4, v6}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2b4
    and-long v4, v2, v28

    cmp-long v6, v4, v47

    if-eqz v6, :cond_2bf

    .line 60
    iget-object v4, v1, Lo8/w;->Z:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2bf
    const-wide/32 v4, 0x18400

    and-long/2addr v4, v2

    cmp-long v6, v4, v47

    if-eqz v6, :cond_2cc

    .line 61
    iget-object v4, v1, Lo8/w;->a0:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {v4, v0}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2cc
    const-wide/32 v4, 0x18100

    and-long/2addr v4, v2

    cmp-long v0, v4, v47

    if-eqz v0, :cond_2e0

    .line 62
    iget-object v0, v1, Lo8/w;->a0:Lcom/tebakgambar/component/CustomTextView;

    move/from16 v14, v34

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v0, v1, Lo8/w;->b0:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2e0
    const-wide/32 v4, 0x19000

    and-long/2addr v2, v4

    cmp-long v0, v2, v47

    if-eqz v0, :cond_2ef

    .line 64
    iget-object v0, v1, Lo8/w;->b0:Lcom/tebakgambar/component/CustomTextView;

    move-object/from16 v2, v39

    invoke-static {v0, v2}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 65
    :cond_2ef
    iget-object v0, v1, Lo8/w;->X:Lo8/e0;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->H(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_2f5
    move-exception v0

    .line 66
    :try_start_2f6
    monitor-exit p0
    :try_end_2f7
    .catchall {:try_start_2f6 .. :try_end_2f7} :catchall_2f5

    throw v0
.end method

.method public W()Z
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/x;->h0:J

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
    iget-object v0, p0, Lo8/w;->X:Lo8/e0;

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

    const-wide/32 v0, 0x10000

    .line 2
    :try_start_4
    iput-wide v0, p0, Lo8/x;->h0:J

    .line 3
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    .line 4
    iget-object v0, p0, Lo8/w;->X:Lo8/e0;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->Z()V

    .line 5
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->k0()V

    return-void

    :catchall_10
    move-exception v0

    .line 6
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method protected e0(ILjava/lang/Object;I)Z
    .registers 4

    packed-switch p1, :pswitch_data_6e

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_5
    check-cast p2, Landroidx/databinding/n;

    invoke-direct {p0, p2, p3}, Lo8/x;->z0(Landroidx/databinding/n;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_c
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/x;->F0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 3
    :pswitch_13
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/x;->V0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 4
    :pswitch_1a
    check-cast p2, Landroidx/databinding/n;

    invoke-direct {p0, p2, p3}, Lo8/x;->E0(Landroidx/databinding/n;I)Z

    move-result p1

    return p1

    .line 5
    :pswitch_21
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/x;->T0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 6
    :pswitch_28
    check-cast p2, Landroidx/databinding/l;

    invoke-direct {p0, p2, p3}, Lo8/x;->R0(Landroidx/databinding/l;I)Z

    move-result p1

    return p1

    .line 7
    :pswitch_2f
    check-cast p2, Landroidx/databinding/n;

    invoke-direct {p0, p2, p3}, Lo8/x;->U0(Landroidx/databinding/n;I)Z

    move-result p1

    return p1

    .line 8
    :pswitch_36
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/x;->B0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 9
    :pswitch_3d
    check-cast p2, Landroidx/databinding/n;

    invoke-direct {p0, p2, p3}, Lo8/x;->x0(Landroidx/databinding/n;I)Z

    move-result p1

    return p1

    .line 10
    :pswitch_44
    check-cast p2, Landroidx/databinding/n;

    invoke-direct {p0, p2, p3}, Lo8/x;->K0(Landroidx/databinding/n;I)Z

    move-result p1

    return p1

    .line 11
    :pswitch_4b
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/x;->S0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 12
    :pswitch_52
    check-cast p2, Lo8/e0;

    invoke-direct {p0, p2, p3}, Lo8/x;->w0(Lo8/e0;I)Z

    move-result p1

    return p1

    .line 13
    :pswitch_59
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/x;->y0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 14
    :pswitch_60
    check-cast p2, Landroidx/databinding/n;

    invoke-direct {p0, p2, p3}, Lo8/x;->M0(Landroidx/databinding/n;I)Z

    move-result p1

    return p1

    .line 15
    :pswitch_67
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/x;->L0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_67
        :pswitch_60
        :pswitch_59
        :pswitch_52
        :pswitch_4b
        :pswitch_44
        :pswitch_3d
        :pswitch_36
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
    .registers 3

    .line 1
    iget-object p1, p0, Lo8/w;->c0:Lcom/tebakgambar/sticker/n;

    if-eqz p1, :cond_6

    const/4 p2, 0x1

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_c

    .line 2
    invoke-virtual {p1}, Lcom/tebakgambar/sticker/n;->S()V

    :cond_c
    return-void
.end method

.method public u0(Lcom/tebakgambar/sticker/n;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lo8/w;->c0:Lcom/tebakgambar/sticker/n;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lo8/x;->h0:J

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo8/x;->h0:J

    .line 4
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->x(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k0()V

    return-void

    :catchall_14
    move-exception p1

    .line 7
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method
