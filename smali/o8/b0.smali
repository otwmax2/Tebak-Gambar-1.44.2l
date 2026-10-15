###### Class o8.b0 (o8.b0)
.class public Lo8/b0;
.super Lo8/a0;
.source "DialogFirebaseLoginBindingImpl.java"

# interfaces
.implements Lp8/a$a;


# static fields
.field private static final e0:Landroidx/databinding/ViewDataBinding$i;

.field private static final f0:Landroid/util/SparseIntArray;


# instance fields
.field private final Y:Landroid/widget/RelativeLayout;

.field private final Z:Landroid/view/View$OnClickListener;

.field private final a0:Landroid/view/View$OnClickListener;

.field private final b0:Landroid/view/View$OnClickListener;

.field private final c0:Landroid/view/View$OnClickListener;

.field private d0:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo8/b0;->f0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0231

    const/4 v2, 0x6

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0121

    const/4 v2, 0x7

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0186

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a02d2

    const/16 v2, 0x9

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lo8/b0;->e0:Landroidx/databinding/ViewDataBinding$i;

    sget-object v1, Lo8/b0;->f0:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->d0(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo8/b0;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 22

    move-object/from16 v13, p0

    const/4 v0, 0x7

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RelativeLayout;

    const/4 v14, 0x3

    aget-object v0, p3, v14

    move-object v8, v0

    check-cast v8, Lcom/tebakgambar/component/CustomButton;

    const/4 v15, 0x2

    aget-object v0, p3, v15

    move-object v9, v0

    check-cast v9, Lcom/tebakgambar/component/CustomButton;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/tebakgambar/component/CustomTextView;

    const/4 v12, 0x4

    aget-object v0, p3, v12

    move-object v11, v0

    check-cast v11, Lcom/tebakgambar/component/CustomTextView;

    const/4 v3, 0x1

    aget-object v0, p3, v3

    move-object/from16 v16, v0

    check-cast v16, Lcom/tebakgambar/component/CustomTextView;

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v15, 0x1

    move/from16 v3, v17

    const/4 v15, 0x4

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lo8/a0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcom/tebakgambar/component/CustomButton;Lcom/tebakgambar/component/CustomButton;Lcom/tebakgambar/component/CustomTextView;Lcom/tebakgambar/component/CustomTextView;Lcom/tebakgambar/component/CustomTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v13, Lo8/b0;->d0:J

    .line 4
    iget-object v0, v13, Lo8/a0;->P:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v13, Lo8/b0;->Y:Landroid/widget/RelativeLayout;

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v13, Lo8/a0;->S:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v13, Lo8/a0;->T:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v13, Lo8/a0;->V:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v13, Lo8/a0;->W:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 11
    invoke-virtual {v13, v0}, Landroidx/databinding/ViewDataBinding;->p0(Landroid/view/View;)V

    .line 12
    new-instance v0, Lp8/a;

    invoke-direct {v0, v13, v14}, Lp8/a;-><init>(Lp8/a$a;I)V

    iput-object v0, v13, Lo8/b0;->Z:Landroid/view/View$OnClickListener;

    .line 13
    new-instance v0, Lp8/a;

    invoke-direct {v0, v13, v15}, Lp8/a;-><init>(Lp8/a$a;I)V

    iput-object v0, v13, Lo8/b0;->a0:Landroid/view/View$OnClickListener;

    .line 14
    new-instance v0, Lp8/a;

    const/4 v1, 0x1

    invoke-direct {v0, v13, v1}, Lp8/a;-><init>(Lp8/a$a;I)V

    iput-object v0, v13, Lo8/b0;->b0:Landroid/view/View$OnClickListener;

    .line 15
    new-instance v0, Lp8/a;

    const/4 v1, 0x2

    invoke-direct {v0, v13, v1}, Lp8/a;-><init>(Lp8/a$a;I)V

    iput-object v0, v13, Lo8/b0;->c0:Landroid/view/View$OnClickListener;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lo8/b0;->Z()V

    return-void
.end method

.method private w0(Landroidx/databinding/m;I)Z
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
    iget-wide p1, p0, Lo8/b0;->d0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/b0;->d0:J

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
    .registers 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/b0;->d0:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lo8/b0;->d0:J

    .line 4
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_52

    .line 5
    iget-object v4, p0, Lo8/a0;->X:Ls8/i;

    const-wide/16 v5, 0x7

    and-long/2addr v5, v0

    const/4 v7, 0x0

    cmp-long v8, v5, v2

    if-eqz v8, :cond_25

    if-eqz v4, :cond_17

    .line 6
    iget-object v4, v4, Ls8/i;->s:Landroidx/databinding/m;

    goto :goto_18

    :cond_17
    move-object v4, v7

    :goto_18
    const/4 v8, 0x0

    .line 7
    invoke-virtual {p0, v8, v4}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v4, :cond_25

    .line 8
    invoke-virtual {v4}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    :cond_25
    const-wide/16 v8, 0x4

    and-long/2addr v0, v8

    cmp-long v4, v0, v2

    if-eqz v4, :cond_48

    .line 9
    iget-object v0, p0, Lo8/a0;->P:Landroid/widget/ImageView;

    iget-object v1, p0, Lo8/b0;->a0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lo8/a0;->S:Lcom/tebakgambar/component/CustomButton;

    iget-object v1, p0, Lo8/b0;->c0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lo8/a0;->T:Lcom/tebakgambar/component/CustomButton;

    iget-object v1, p0, Lo8/b0;->b0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lo8/a0;->V:Lcom/tebakgambar/component/CustomTextView;

    iget-object v1, p0, Lo8/b0;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tebakgambar/component/CustomTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_48
    cmp-long v0, v5, v2

    if-eqz v0, :cond_51

    .line 13
    iget-object v0, p0, Lo8/a0;->W:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {v0, v7}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_51
    return-void

    :catchall_52
    move-exception v0

    .line 14
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0
.end method

.method public W()Z
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/b0;->d0:J

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

    const-wide/16 v0, 0x4

    .line 2
    :try_start_3
    iput-wide v0, p0, Lo8/b0;->d0:J

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

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_4
    check-cast p2, Landroidx/databinding/m;

    invoke-direct {p0, p2, p3}, Lo8/b0;->w0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1
.end method

.method public final t(ILandroid/view/View;)V
    .registers 5

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_24

    const/4 v1, 0x3

    if-eq p1, v1, :cond_19

    const/4 v1, 0x4

    if-eq p1, v1, :cond_e

    goto :goto_39

    .line 1
    :cond_e
    iget-object p1, p0, Lo8/a0;->X:Ls8/i;

    if-eqz p1, :cond_13

    const/4 p2, 0x1

    :cond_13
    if-eqz p2, :cond_39

    .line 2
    invoke-virtual {p1}, Ls8/i;->s()V

    goto :goto_39

    .line 3
    :cond_19
    iget-object p1, p0, Lo8/a0;->X:Ls8/i;

    if-eqz p1, :cond_1e

    const/4 p2, 0x1

    :cond_1e
    if-eqz p2, :cond_39

    .line 4
    invoke-virtual {p1}, Ls8/i;->x()V

    goto :goto_39

    .line 5
    :cond_24
    iget-object p1, p0, Lo8/a0;->X:Ls8/i;

    if-eqz p1, :cond_29

    const/4 p2, 0x1

    :cond_29
    if-eqz p2, :cond_39

    .line 6
    invoke-virtual {p1}, Ls8/i;->u()V

    goto :goto_39

    .line 7
    :cond_2f
    iget-object p1, p0, Lo8/a0;->X:Ls8/i;

    if-eqz p1, :cond_34

    const/4 p2, 0x1

    :cond_34
    if-eqz p2, :cond_39

    .line 8
    invoke-virtual {p1}, Ls8/i;->v()V

    :cond_39
    :goto_39
    return-void
.end method

.method public u0(Ls8/i;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lo8/a0;->X:Ls8/i;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lo8/b0;->d0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo8/b0;->d0:J

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
