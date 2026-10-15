###### Class o8.z (o8.z)
.class public Lo8/z;
.super Lo8/y;
.source "ActivityStickerCampaignListBindingImpl.java"

# interfaces
.implements Lp8/a$a;


# static fields
.field private static final a0:Landroidx/databinding/ViewDataBinding$i;

.field private static final b0:Landroid/util/SparseIntArray;


# instance fields
.field private final W:Landroid/widget/LinearLayout;

.field private final X:Lcom/tebakgambar/component/CustomTextView;

.field private final Y:Landroid/view/View$OnClickListener;

.field private Z:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$i;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$i;-><init>(I)V

    sput-object v0, Lo8/z;->a0:Landroidx/databinding/ViewDataBinding$i;

    const-string v1, "header_normal"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x6

    const/4 v5, 0x0

    aput v4, v3, v5

    new-array v2, v2, [I

    const v4, 0x7f0d004e

    aput v4, v2, v5

    invoke-virtual {v0, v5, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$i;->a(I[Ljava/lang/String;[I[I)V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo8/z;->b0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0217

    const/4 v2, 0x7

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0120

    const/16 v2, 0x8

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lo8/z;->a0:Landroidx/databinding/ViewDataBinding$i;

    sget-object v1, Lo8/z;->b0:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->d0(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo8/z;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 16

    const/4 v0, 0x5

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/tebakgambar/component/CustomButton;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/RelativeLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/RelativeLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lo8/e0;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v11, v1

    check-cast v11, Lcom/tebakgambar/component/CustomTextView;

    const/4 v4, 0x4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v11}, Lo8/y;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/tebakgambar/component/CustomButton;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lo8/e0;Lcom/tebakgambar/component/CustomTextView;)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lo8/z;->Z:J

    .line 4
    iget-object p1, p0, Lo8/y;->O:Lcom/tebakgambar/component/CustomButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lo8/z;->W:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Lcom/tebakgambar/component/CustomTextView;

    iput-object p1, p0, Lo8/z;->X:Lcom/tebakgambar/component/CustomTextView;

    .line 8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lo8/y;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lo8/y;->S:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lo8/y;->T:Lo8/e0;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->o0(Landroidx/databinding/ViewDataBinding;)V

    .line 12
    iget-object p1, p0, Lo8/y;->U:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->p0(Landroid/view/View;)V

    .line 14
    new-instance p1, Lp8/a;

    invoke-direct {p1, p0, v0}, Lp8/a;-><init>(Lp8/a$a;I)V

    iput-object p1, p0, Lo8/z;->Y:Landroid/view/View$OnClickListener;

    .line 15
    invoke-virtual {p0}, Lo8/z;->Z()V

    return-void
.end method

.method private w0(Lo8/e0;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/z;->Z:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/z;->Z:J

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
    iget-wide p1, p0, Lo8/z;->Z:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/z;->Z:J

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

.method private y0(Landroidx/databinding/l;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/z;->Z:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/z;->Z:J

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
    iget-wide p1, p0, Lo8/z;->Z:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/z;->Z:J

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
    .registers 21

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide v2, v1, Lo8/z;->Z:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lo8/z;->Z:J

    .line 4
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d8

    .line 5
    iget-object v0, v1, Lo8/y;->V:Lcom/tebakgambar/sticker/i;

    const-wide/16 v6, 0x3b

    and-long/2addr v6, v2

    const-wide/16 v8, 0x38

    const-wide/16 v10, 0x32

    const-wide/16 v12, 0x31

    const/4 v15, 0x0

    cmp-long v16, v6, v4

    if-eqz v16, :cond_9b

    and-long v6, v2, v12

    const/16 v16, 0x8

    const/4 v14, 0x1

    cmp-long v17, v6, v4

    if-eqz v17, :cond_4e

    if-eqz v0, :cond_28

    .line 6
    iget-object v12, v0, Lcom/tebakgambar/sticker/i;->u:Landroidx/databinding/m;

    goto :goto_29

    :cond_28
    const/4 v12, 0x0

    .line 7
    :goto_29
    invoke-virtual {v1, v15, v12}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v12, :cond_35

    .line 8
    invoke-virtual {v12}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_36

    :cond_35
    const/4 v12, 0x0

    :goto_36
    if-eqz v12, :cond_3a

    const/4 v13, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v13, 0x0

    :goto_3b
    cmp-long v18, v6, v4

    if-eqz v18, :cond_47

    if-eqz v13, :cond_44

    const-wide/16 v6, 0x200

    goto :goto_46

    :cond_44
    const-wide/16 v6, 0x100

    :goto_46
    or-long/2addr v2, v6

    :cond_47
    if-eqz v13, :cond_4b

    const/4 v6, 0x0

    goto :goto_50

    :cond_4b
    const/16 v6, 0x8

    goto :goto_50

    :cond_4e
    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_50
    and-long v18, v2, v10

    cmp-long v7, v18, v4

    if-eqz v7, :cond_68

    if-eqz v0, :cond_5b

    .line 9
    iget-object v7, v0, Lcom/tebakgambar/sticker/i;->s:Landroidx/databinding/m;

    goto :goto_5c

    :cond_5b
    const/4 v7, 0x0

    .line 10
    :goto_5c
    invoke-virtual {v1, v14, v7}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v7, :cond_68

    .line 11
    invoke-virtual {v7}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_69

    :cond_68
    const/4 v7, 0x0

    :goto_69
    and-long v13, v2, v8

    cmp-long v18, v13, v4

    if-eqz v18, :cond_97

    if-eqz v0, :cond_74

    .line 12
    iget-object v0, v0, Lcom/tebakgambar/sticker/i;->t:Landroidx/databinding/l;

    goto :goto_75

    :cond_74
    const/4 v0, 0x0

    :goto_75
    const/4 v15, 0x3

    .line 13
    invoke-virtual {v1, v15, v0}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v0, :cond_80

    .line 14
    invoke-virtual {v0}, Landroidx/databinding/l;->y()Z

    move-result v0

    goto :goto_81

    :cond_80
    const/4 v0, 0x0

    :goto_81
    cmp-long v15, v13, v4

    if-eqz v15, :cond_8d

    if-eqz v0, :cond_8a

    const-wide/16 v13, 0x80

    goto :goto_8c

    :cond_8a
    const-wide/16 v13, 0x40

    :goto_8c
    or-long/2addr v2, v13

    :cond_8d
    if-eqz v0, :cond_91

    const/4 v15, 0x0

    goto :goto_93

    :cond_91
    const/16 v15, 0x8

    :goto_93
    move-object v14, v12

    move v0, v15

    move v15, v6

    goto :goto_9f

    :cond_97
    move v15, v6

    move-object v14, v12

    const/4 v0, 0x0

    goto :goto_9f

    :cond_9b
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_9f
    const-wide/16 v12, 0x20

    and-long/2addr v12, v2

    cmp-long v6, v12, v4

    if-eqz v6, :cond_ad

    .line 15
    iget-object v6, v1, Lo8/y;->O:Lcom/tebakgambar/component/CustomButton;

    iget-object v12, v1, Lo8/z;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v12}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_ad
    const-wide/16 v12, 0x31

    and-long/2addr v12, v2

    cmp-long v6, v12, v4

    if-eqz v6, :cond_be

    .line 16
    iget-object v6, v1, Lo8/z;->X:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {v6, v14}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 17
    iget-object v6, v1, Lo8/y;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_be
    and-long/2addr v8, v2

    cmp-long v6, v8, v4

    if-eqz v6, :cond_c8

    .line 18
    iget-object v6, v1, Lo8/y;->S:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_c8
    and-long/2addr v2, v10

    cmp-long v0, v2, v4

    if-eqz v0, :cond_d2

    .line 19
    iget-object v0, v1, Lo8/y;->U:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {v0, v7}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 20
    :cond_d2
    iget-object v0, v1, Lo8/y;->T:Lo8/e0;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->H(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_d8
    move-exception v0

    .line 21
    :try_start_d9
    monitor-exit p0
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw v0
.end method

.method public W()Z
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/z;->Z:J

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
    iget-object v0, p0, Lo8/y;->T:Lo8/e0;

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

    const-wide/16 v0, 0x20

    .line 2
    :try_start_3
    iput-wide v0, p0, Lo8/z;->Z:J

    .line 3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 4
    iget-object v0, p0, Lo8/y;->T:Lo8/e0;

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
    check-cast p2, Landroidx/databinding/l;

    invoke-direct {p0, p2, p3}, Lo8/z;->y0(Landroidx/databinding/l;I)Z

    move-result p1

    return p1

    .line 2
    :cond_14
    check-cast p2, Lo8/e0;

    invoke-direct {p0, p2, p3}, Lo8/z;->w0(Lo8/e0;I)Z

    move-result p1

    return p1

    .line 3
    :cond_1b
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/z;->z0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1

    .line 4
    :cond_22
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/z;->x0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1
.end method

.method public final t(ILandroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lo8/y;->V:Lcom/tebakgambar/sticker/i;

    if-eqz p1, :cond_6

    const/4 p2, 0x1

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_c

    .line 2
    invoke-virtual {p1}, Lcom/tebakgambar/sticker/i;->m()V

    :cond_c
    return-void
.end method

.method public u0(Lcom/tebakgambar/sticker/i;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lo8/y;->V:Lcom/tebakgambar/sticker/i;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lo8/z;->Z:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo8/z;->Z:J

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
