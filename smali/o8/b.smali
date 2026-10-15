###### Class o8.b (o8.b)
.class public Lo8/b;
.super Lo8/a;
.source "ActivityClueEventTutorialBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo8/b$a;
    }
.end annotation


# static fields
.field private static final Y:Landroidx/databinding/ViewDataBinding$i;

.field private static final Z:Landroid/util/SparseIntArray;


# instance fields
.field private final V:Landroid/widget/RelativeLayout;

.field private W:Lo8/b$a;

.field private X:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$i;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$i;-><init>(I)V

    sput-object v0, Lo8/b;->Y:Landroidx/databinding/ViewDataBinding$i;

    const-string v1, "header_normal"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v4, v3, v5

    new-array v2, v2, [I

    const v4, 0x7f0d004e

    aput v4, v2, v5

    invoke-virtual {v0, v5, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$i;->a(I[Ljava/lang/String;[I[I)V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo8/b;->Z:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02e6

    const/4 v2, 0x3

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01a2

    const/4 v2, 0x4

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0120

    const/4 v2, 0x5

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lo8/b;->Y:Landroidx/databinding/ViewDataBinding$i;

    sget-object v1, Lo8/b;->Z:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->d0(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo8/b;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 14

    const/4 v0, 0x1

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/tebakgambar/component/CustomButton;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/tebakgambar/component/CustomListView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lo8/e0;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/tebakgambar/component/CustomTextView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lo8/a;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/tebakgambar/component/CustomButton;Landroid/widget/FrameLayout;Lcom/tebakgambar/component/CustomListView;Lo8/e0;Lcom/tebakgambar/component/CustomTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lo8/b;->X:J

    .line 4
    iget-object p1, p0, Lo8/a;->O:Lcom/tebakgambar/component/CustomButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lo8/b;->V:Landroid/widget/RelativeLayout;

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lo8/a;->R:Lo8/e0;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->o0(Landroidx/databinding/ViewDataBinding;)V

    .line 8
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->p0(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lo8/b;->Z()V

    return-void
.end method

.method private x0(Lo8/e0;I)Z
    .registers 5

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/b;->X:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/b;->X:J

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
    .registers 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/b;->X:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lo8/b;->X:J

    .line 4
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_32

    const/4 v4, 0x0

    .line 5
    iget-object v5, p0, Lo8/a;->U:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;

    const-wide/16 v6, 0xa

    and-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-eqz v6, :cond_23

    if-eqz v5, :cond_23

    .line 6
    iget-object v4, p0, Lo8/b;->W:Lo8/b$a;

    if-nez v4, :cond_1f

    new-instance v4, Lo8/b$a;

    invoke-direct {v4}, Lo8/b$a;-><init>()V

    iput-object v4, p0, Lo8/b;->W:Lo8/b$a;

    :cond_1f
    invoke-virtual {v4, v5}, Lo8/b$a;->a(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;)Lo8/b$a;

    move-result-object v4

    :cond_23
    cmp-long v5, v0, v2

    if-eqz v5, :cond_2c

    .line 7
    iget-object v0, p0, Lo8/a;->O:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v4}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_2c
    iget-object v0, p0, Lo8/a;->R:Lo8/e0;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->H(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_32
    move-exception v0

    .line 9
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public W()Z
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/b;->X:J

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
    iget-object v0, p0, Lo8/a;->R:Lo8/e0;

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

    const-wide/16 v0, 0x8

    .line 2
    :try_start_3
    iput-wide v0, p0, Lo8/b;->X:J

    .line 3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 4
    iget-object v0, p0, Lo8/a;->R:Lo8/e0;

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

    invoke-direct {p0, p2, p3}, Lo8/b;->x0(Lo8/e0;I)Z

    move-result p1

    return p1
.end method

.method public u0(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lo8/a;->U:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lo8/b;->X:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo8/b;->X:J

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

.method public w0(Lcom/tebakgambar/tutorial/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lo8/a;->T:Lcom/tebakgambar/tutorial/d;

    return-void
.end method

###### Class o8.b.a (o8.b$a)
.class public Lo8/b$a;
.super Ljava/lang/Object;
.source "ActivityClueEventTutorialBindingImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private o:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;)Lo8/b$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lo8/b$a;->o:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;

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
    iget-object v0, p0, Lo8/b$a;->o:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;

    invoke-virtual {v0, p1}, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;->a(Landroid/view/View;)V

    return-void
.end method
