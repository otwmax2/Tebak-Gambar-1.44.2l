###### Class o8.n (o8.n)
.class public Lo8/n;
.super Lo8/m;
.source "ActivityQuestionSelectionBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo8/n$a;
    }
.end annotation


# static fields
.field private static final Y:Landroidx/databinding/ViewDataBinding$i;

.field private static final Z:Landroid/util/SparseIntArray;


# instance fields
.field private final V:Landroid/widget/RelativeLayout;

.field private W:Lo8/n$a;

.field private X:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo8/n;->Z:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0224

    const/4 v2, 0x3

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0217

    const/4 v2, 0x4

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0120

    const/4 v2, 0x5

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lo8/n;->Y:Landroidx/databinding/ViewDataBinding$i;

    sget-object v1, Lo8/n;->Z:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->d0(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo8/n;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

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

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/RelativeLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/tebakgambar/component/CustomTextView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lo8/m;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/tebakgambar/component/CustomButton;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Lcom/tebakgambar/component/CustomTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lo8/n;->X:J

    .line 4
    iget-object p1, p0, Lo8/m;->O:Lcom/tebakgambar/component/CustomButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lo8/n;->V:Landroid/widget/RelativeLayout;

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lo8/m;->S:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->p0(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lo8/n;->Z()V

    return-void
.end method

.method private x0(Landroidx/databinding/m;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/m<",
            "Lcom/tebakgambar/model/Level;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_3
    iget-wide p1, p0, Lo8/n;->X:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lo8/n;->X:J

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
    .registers 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/n;->X:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lo8/n;->X:J

    .line 4
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_74

    .line 5
    iget-object v4, p0, Lo8/m;->U:Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;

    .line 6
    iget-object v5, p0, Lo8/m;->T:Lcom/tebakgambar/levelselection/j0;

    const-wide/16 v6, 0xa

    and-long/2addr v6, v0

    const/4 v8, 0x0

    cmp-long v9, v6, v2

    if-eqz v9, :cond_26

    if-eqz v4, :cond_26

    .line 7
    iget-object v9, p0, Lo8/n;->W:Lo8/n$a;

    if-nez v9, :cond_21

    new-instance v9, Lo8/n$a;

    invoke-direct {v9}, Lo8/n$a;-><init>()V

    iput-object v9, p0, Lo8/n;->W:Lo8/n$a;

    :cond_21
    invoke-virtual {v9, v4}, Lo8/n$a;->a(Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;)Lo8/n$a;

    move-result-object v4

    goto :goto_27

    :cond_26
    move-object v4, v8

    :goto_27
    const-wide/16 v9, 0xd

    and-long/2addr v0, v9

    cmp-long v9, v0, v2

    if-eqz v9, :cond_61

    if-eqz v5, :cond_33

    .line 8
    iget-object v5, v5, Lcom/tebakgambar/levelselection/j0;->s:Landroidx/databinding/m;

    goto :goto_34

    :cond_33
    move-object v5, v8

    :goto_34
    const/4 v9, 0x0

    .line 9
    invoke-virtual {p0, v9, v5}, Landroidx/databinding/ViewDataBinding;->r0(ILandroidx/databinding/j;)Z

    if-eqz v5, :cond_41

    .line 10
    invoke-virtual {v5}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/tebakgambar/model/Level;

    :cond_41
    if-eqz v8, :cond_46

    .line 11
    iget v5, v8, Lcom/tebakgambar/model/Level;->id:I

    goto :goto_47

    :cond_46
    const/4 v5, 0x0

    .line 12
    :goto_47
    iget-object v8, p0, Lo8/m;->S:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f1201ca

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v9

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :cond_61
    cmp-long v5, v6, v2

    if-eqz v5, :cond_6a

    .line 13
    iget-object v5, p0, Lo8/m;->O:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v5, v4}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6a
    cmp-long v4, v0, v2

    if-eqz v4, :cond_73

    .line 14
    iget-object v0, p0, Lo8/m;->S:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {v0, v8}, Ld0/d;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_73
    return-void

    :catchall_74
    move-exception v0

    .line 15
    :try_start_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v0
.end method

.method public W()Z
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lo8/n;->X:J

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

    const-wide/16 v0, 0x8

    .line 2
    :try_start_3
    iput-wide v0, p0, Lo8/n;->X:J

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

    invoke-direct {p0, p2, p3}, Lo8/n;->x0(Landroidx/databinding/m;I)Z

    move-result p1

    return p1
.end method

.method public u0(Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lo8/m;->U:Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lo8/n;->X:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo8/n;->X:J

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

.method public w0(Lcom/tebakgambar/levelselection/j0;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lo8/m;->T:Lcom/tebakgambar/levelselection/j0;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_3
    iget-wide v0, p0, Lo8/n;->X:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo8/n;->X:J

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

###### Class o8.n.a (o8.n$a)
.class public Lo8/n$a;
.super Ljava/lang/Object;
.source "ActivityQuestionSelectionBindingImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo8/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private o:Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;)Lo8/n$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lo8/n$a;->o:Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;

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
    iget-object v0, p0, Lo8/n$a;->o:Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;

    invoke-virtual {v0, p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;->a(Landroid/view/View;)V

    return-void
.end method
