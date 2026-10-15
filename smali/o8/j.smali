###### Class o8.j (o8.j)
.class public Lo8/j;
.super Lo8/i;
.source "ActivityLevelLoadingBindingImpl.java"


# static fields
.field private static final Y:Landroidx/databinding/ViewDataBinding$i;

.field private static final Z:Landroid/util/SparseIntArray;


# instance fields
.field private X:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$i;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$i;-><init>(I)V

    sput-object v0, Lo8/j;->Y:Landroidx/databinding/ViewDataBinding$i;

    const-string v1, "header_normal"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v4, v3, v5

    new-array v2, v2, [I

    const v4, 0x7f0d004e

    aput v4, v2, v5

    invoke-virtual {v0, v5, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$i;->a(I[Ljava/lang/String;[I[I)V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo8/j;->Z:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0192

    const/4 v2, 0x4

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0167

    const/4 v2, 0x5

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0162

    const/4 v2, 0x6

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0120

    const/4 v2, 0x7

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lo8/j;->Y:Landroidx/databinding/ViewDataBinding$i;

    sget-object v1, Lo8/j;->Z:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->d0(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo8/j;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 17

    move-object v12, p0

    const/4 v0, 0x1

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/tebakgambar/component/CustomButton;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/FrameLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/RelativeLayout;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lo8/e0;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/tebakgambar/component/CustomTextView;

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lo8/i;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/tebakgambar/component/CustomButton;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lo8/e0;Lcom/tebakgambar/component/CustomTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v12, Lo8/j;->X:J

    .line 4
    iget-object v0, v12, Lo8/i;->O:Lcom/tebakgambar/component/CustomButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v12, Lo8/i;->T:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v12, Lo8/i;->U:Lo8/e0;

    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->o0(Landroidx/databinding/ViewDataBinding;)V

    .line 7
    iget-object v0, v12, Lo8/i;->V:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object v0, p2

    .line 8
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->p0(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lo8/j;->Z()V

    return-void
.end method

.method private w0(Lo8/e0;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/j;->X:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/j;->X:J

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
    iget-wide p1, p0, Lo8/j;->X:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/j;->X:J

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
    iget-wide p1, p0, Lo8/j;->X:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/j;->X:J

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
    .registers 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/j;->X:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lo8/j;->X:J

    .line 4
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_68

    .line 5
    iget-object v4, p0, Lo8/i;->W:Lcom/tebakgambar/levelselection/f;

    const-wide/16 v5, 0x1b

    and-long/2addr v5, v0

    const-wide/16 v7, 0x1a

    const-wide/16 v9, 0x19

    const/4 v11, 0x0

    cmp-long v12, v5, v2

    if-eqz v12, :cond_4c

    and-long v5, v0, v9

    cmp-long v12, v5, v2

    if-eqz v12, :cond_2f

    if-eqz v4, :cond_21

    .line 6
    iget-object v5, v4, Lcom/tebakgambar/levelselection/f;->t:Landroidx/databinding/m;

    goto :goto_22

    :cond_21
    move-object v5, v11

    :goto_22
    const/4 v6, 0x0

    .line 7
    invoke-virtual {p0, v6, v5}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v5, :cond_2f

    .line 8
    invoke-virtual {v5}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_30

    :cond_2f
    move-object v5, v11

    :goto_30
    and-long v12, v0, v7

    cmp-long v6, v12, v2

    if-eqz v6, :cond_49

    if-eqz v4, :cond_3b

    .line 9
    iget-object v4, v4, Lcom/tebakgambar/levelselection/f;->s:Landroidx/databinding/m;

    goto :goto_3c

    :cond_3b
    move-object v4, v11

    :goto_3c
    const/4 v6, 0x1

    .line 10
    invoke-virtual {p0, v6, v4}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v4, :cond_49

    .line 11
    invoke-virtual {v4}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    :cond_49
    move-object v4, v11

    move-object v11, v5

    goto :goto_4d

    :cond_4c
    move-object v4, v11

    :goto_4d
    and-long v5, v0, v9

    cmp-long v9, v5, v2

    if-eqz v9, :cond_58

    .line 12
    iget-object v5, p0, Lo8/i;->O:Lcom/tebakgambar/component/CustomButton;

    invoke-static {v5, v11}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_58
    and-long/2addr v0, v7

    cmp-long v5, v0, v2

    if-eqz v5, :cond_62

    .line 13
    iget-object v0, p0, Lo8/i;->V:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {v0, v4}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 14
    :cond_62
    iget-object v0, p0, Lo8/i;->U:Lo8/e0;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->H(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_68
    move-exception v0

    .line 15
    :try_start_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0
.end method

.method public W()Z
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/j;->X:J

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
    iget-object v0, p0, Lo8/i;->U:Lo8/e0;

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

    const-wide/16 v0, 0x10

    .line 2
    :try_start_3
    iput-wide v0, p0, Lo8/j;->X:J

    .line 3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 4
    iget-object v0, p0, Lo8/i;->U:Lo8/e0;

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
    .registers 5

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_a
    check-cast p2, Lo8/e0;

    invoke-direct {p0, p2, p3}, Lo8/j;->w0(Lo8/e0;I)Z

    move-result p1

    return p1

    .line 2
    :cond_11
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/j;->x0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 3
    :cond_18
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/j;->y0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1
.end method

.method public u0(Lcom/tebakgambar/levelselection/f;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lo8/i;->W:Lcom/tebakgambar/levelselection/f;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lo8/j;->X:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo8/j;->X:J

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
