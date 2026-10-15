###### Class o8.v (o8.v)
.class public Lo8/v;
.super Lo8/u;
.source "ActivitySliderBindingImpl.java"


# static fields
.field private static final T:Landroidx/databinding/ViewDataBinding$i;

.field private static final U:Landroid/util/SparseIntArray;


# instance fields
.field private final Q:Landroid/widget/RelativeLayout;

.field private final R:Landroid/widget/ImageView;

.field private S:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lo8/v;->T:Landroidx/databinding/ViewDataBinding$i;

    sget-object v1, Lo8/v;->U:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->d0(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo8/v;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x2

    .line 2
    aget-object v0, p3, v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    const/4 v1, 0x5

    invoke-direct {p0, p1, p2, v1, v0}, Lo8/u;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/tebakgambar/component/CustomButton;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lo8/v;->S:J

    .line 4
    iget-object p1, p0, Lo8/u;->O:Lcom/tebakgambar/component/CustomButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lo8/v;->Q:Landroid/widget/RelativeLayout;

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo8/v;->R:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->p0(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Lo8/v;->Z()V

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
    iget-wide p1, p0, Lo8/v;->S:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/v;->S:J

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

.method private w0(Landroidx/databinding/m;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/m<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/v;->S:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/v;->S:J

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
            "Landroid/graphics/drawable/Drawable;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/v;->S:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/v;->S:J

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
    iget-wide p1, p0, Lo8/v;->S:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/v;->S:J

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
    iget-wide p1, p0, Lo8/v;->S:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/v;->S:J

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
    .registers 25

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide v2, v1, Lo8/v;->S:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lo8/v;->S:J

    .line 4
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_dc

    .line 5
    iget-object v0, v1, Lo8/u;->P:Lcom/tebakgambar/levelselection/p0;

    const-wide/16 v6, 0x7f

    and-long/2addr v6, v2

    const-wide/16 v8, 0x64

    const-wide/16 v10, 0x62

    const-wide/16 v14, 0x61

    const-wide/16 v16, 0x68

    const/4 v12, 0x0

    cmp-long v18, v6, v4

    if-eqz v18, :cond_9e

    and-long v6, v2, v14

    cmp-long v18, v6, v4

    if-eqz v18, :cond_34

    if-eqz v0, :cond_27

    .line 6
    iget-object v6, v0, Lcom/tebakgambar/levelselection/p0;->u:Landroidx/databinding/m;

    goto :goto_28

    :cond_27
    const/4 v6, 0x0

    .line 7
    :goto_28
    invoke-virtual {v1, v12, v6}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v6, :cond_34

    .line 8
    invoke-virtual {v6}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_35

    :cond_34
    const/4 v6, 0x0

    :goto_35
    and-long v18, v2, v10

    cmp-long v7, v18, v4

    if-eqz v7, :cond_4c

    if-eqz v0, :cond_40

    .line 9
    iget-object v7, v0, Lcom/tebakgambar/levelselection/p0;->y:Landroidx/databinding/n;

    goto :goto_41

    :cond_40
    const/4 v7, 0x0

    :goto_41
    const/4 v12, 0x1

    .line 10
    invoke-virtual {v1, v12, v7}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v7, :cond_4c

    .line 11
    invoke-virtual {v7}, Landroidx/databinding/n;->y()I

    move-result v12

    goto :goto_4d

    :cond_4c
    const/4 v12, 0x0

    :goto_4d
    and-long v18, v2, v8

    cmp-long v7, v18, v4

    if-eqz v7, :cond_66

    if-eqz v0, :cond_58

    .line 12
    iget-object v7, v0, Lcom/tebakgambar/levelselection/p0;->w:Landroidx/databinding/m;

    goto :goto_59

    :cond_58
    const/4 v7, 0x0

    :goto_59
    const/4 v13, 0x2

    .line 13
    invoke-virtual {v1, v13, v7}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v7, :cond_66

    .line 14
    invoke-virtual {v7}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    goto :goto_67

    :cond_66
    const/4 v7, 0x0

    :goto_67
    and-long v20, v2, v16

    cmp-long v13, v20, v4

    if-eqz v13, :cond_80

    if-eqz v0, :cond_72

    .line 15
    iget-object v13, v0, Lcom/tebakgambar/levelselection/p0;->x:Landroidx/databinding/m;

    goto :goto_73

    :cond_72
    const/4 v13, 0x0

    :goto_73
    const/4 v14, 0x3

    .line 16
    invoke-virtual {v1, v14, v13}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v13, :cond_80

    .line 17
    invoke-virtual {v13}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/Drawable;

    goto :goto_81

    :cond_80
    const/4 v13, 0x0

    :goto_81
    const-wide/16 v14, 0x70

    and-long v22, v2, v14

    cmp-long v14, v22, v4

    if-eqz v14, :cond_9c

    if-eqz v0, :cond_8e

    .line 18
    iget-object v0, v0, Lcom/tebakgambar/levelselection/p0;->v:Landroidx/databinding/m;

    goto :goto_8f

    :cond_8e
    const/4 v0, 0x0

    :goto_8f
    const/4 v14, 0x4

    .line 19
    invoke-virtual {v1, v14, v0}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v0, :cond_9c

    .line 20
    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_a3

    :cond_9c
    const/4 v0, 0x0

    goto :goto_a3

    :cond_9e
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_a3
    and-long v14, v2, v16

    cmp-long v16, v14, v4

    if-eqz v16, :cond_ae

    .line 21
    iget-object v14, v1, Lo8/u;->O:Lcom/tebakgambar/component/CustomButton;

    invoke-static {v14, v13}, Ld0/e;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_ae
    const-wide/16 v13, 0x70

    and-long/2addr v13, v2

    cmp-long v15, v13, v4

    if-eqz v15, :cond_ba

    .line 22
    iget-object v13, v1, Lo8/u;->O:Lcom/tebakgambar/component/CustomButton;

    invoke-static {v13, v0}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_ba
    and-long/2addr v10, v2

    cmp-long v0, v10, v4

    if-eqz v0, :cond_c4

    .line 23
    iget-object v0, v1, Lo8/u;->O:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setTextColor(I)V

    :cond_c4
    and-long/2addr v8, v2

    cmp-long v0, v8, v4

    if-eqz v0, :cond_ce

    .line 24
    iget-object v0, v1, Lo8/v;->Q:Landroid/widget/RelativeLayout;

    invoke-static {v0, v7}, Ld0/e;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_ce
    const-wide/16 v7, 0x61

    and-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-eqz v0, :cond_db

    .line 25
    iget-object v0, v1, Lo8/v;->R:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, v6, v2}, Ly8/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_db
    return-void

    :catchall_dc
    move-exception v0

    .line 26
    :try_start_dd
    monitor-exit p0
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw v0
.end method

.method public W()Z
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/v;->S:J

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
    iput-wide v0, p0, Lo8/v;->S:J

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

    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_10
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/v;->y0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 2
    :cond_17
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/v;->x0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 3
    :cond_1e
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/v;->w0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 4
    :cond_25
    check-cast p2, Landroidx/databinding/n;

    invoke-direct {p0, p2, p3}, Lo8/v;->z0(Landroidx/databinding/n;I)Z

    move-result p1

    return p1

    .line 5
    :cond_2c
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/v;->B0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1
.end method

.method public u0(Lcom/tebakgambar/levelselection/p0;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lo8/u;->P:Lcom/tebakgambar/levelselection/p0;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lo8/v;->S:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo8/v;->S:J

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
