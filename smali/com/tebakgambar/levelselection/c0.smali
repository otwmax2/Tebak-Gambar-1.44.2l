###### Class com.tebakgambar.levelselection.c0 (com.tebakgambar.levelselection.c0)
.class public Lcom/tebakgambar/levelselection/c0;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "QuestionSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/levelselection/c0$c;,
        Lcom/tebakgambar/levelselection/c0$b;,
        Lcom/tebakgambar/levelselection/c0$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Landroidx/recyclerview/widget/RecyclerView$e0;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/tebakgambar/levelselection/c0$d;

.field private e:Lcom/tebakgambar/levelselection/c0$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    return-void
.end method

.method static synthetic v(Lcom/tebakgambar/levelselection/c0;)Lcom/tebakgambar/levelselection/c0$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/levelselection/c0;->e:Lcom/tebakgambar/levelselection/c0$b;

    return-object p0
.end method


# virtual methods
.method public d()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/c0;->d:Lcom/tebakgambar/levelselection/c0$d;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/c0$d;->a:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_1a

    :cond_c
    iget-object v0, p0, Lcom/tebakgambar/levelselection/c0;->d:Lcom/tebakgambar/levelselection/c0$d;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/c0$d;->a:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1a
    return v0
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView$e0;I)V
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/tebakgambar/levelselection/c0$c;

    if-eqz v0, :cond_19

    .line 2
    check-cast p1, Lcom/tebakgambar/levelselection/c0$c;

    iget-object v0, p0, Lcom/tebakgambar/levelselection/c0;->d:Lcom/tebakgambar/levelselection/c0$d;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/c0$d;->a:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/QuestionSavedData;

    invoke-virtual {p1, p2}, Lcom/tebakgambar/levelselection/c0$c;->W(Lcom/tebakgambar/model/QuestionSavedData;)V

    :cond_19
    return-void
.end method

.method public m(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$e0;
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/tebakgambar/levelselection/c0$c;

    const v1, 0x7f0d00a5

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/tebakgambar/levelselection/c0$c;-><init>(Lcom/tebakgambar/levelselection/c0;Landroid/view/View;)V

    return-object v0
.end method

.method public w(Lcom/tebakgambar/levelselection/c0$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/c0;->e:Lcom/tebakgambar/levelselection/c0$b;

    return-void
.end method

.method public x(Lcom/tebakgambar/levelselection/c0$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/c0;->d:Lcom/tebakgambar/levelselection/c0$d;

    .line 2
    iget-object p1, p1, Lcom/tebakgambar/levelselection/c0$d;->a:Landroidx/databinding/m;

    new-instance v0, Lcom/tebakgambar/levelselection/c0$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/c0$a;-><init>(Lcom/tebakgambar/levelselection/c0;)V

    invoke-virtual {p1, v0}, Landroidx/databinding/a;->h(Landroidx/databinding/j$a;)V

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->i()V

    return-void
.end method

###### Class com.tebakgambar.levelselection.c0.a (com.tebakgambar.levelselection.c0$a)
.class Lcom/tebakgambar/levelselection/c0$a;
.super Landroidx/databinding/j$a;
.source "QuestionSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/levelselection/c0;->x(Lcom/tebakgambar/levelselection/c0$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/levelselection/c0;


# direct methods
.method constructor <init>(Lcom/tebakgambar/levelselection/c0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/c0$a;->a:Lcom/tebakgambar/levelselection/c0;

    invoke-direct {p0}, Landroidx/databinding/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroidx/databinding/j;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/c0$a;->a:Lcom/tebakgambar/levelselection/c0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->i()V

    return-void
.end method

###### Class com.tebakgambar.levelselection.c0.b (com.tebakgambar.levelselection.c0$b)
.class interface abstract Lcom/tebakgambar/levelselection/c0$b;
.super Ljava/lang/Object;
.source "QuestionSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract s(Lcom/tebakgambar/model/QuestionSavedData;)V
.end method

###### Class com.tebakgambar.levelselection.c0.c (com.tebakgambar.levelselection.c0$c)
.class Lcom/tebakgambar/levelselection/c0$c;
.super Landroidx/recyclerview/widget/RecyclerView$e0;
.source "QuestionSelectionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field I:Lcom/tebakgambar/model/QuestionSavedData;

.field J:Lo8/a1;

.field final synthetic K:Lcom/tebakgambar/levelselection/c0;


# direct methods
.method public constructor <init>(Lcom/tebakgambar/levelselection/c0;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/c0$c;->K:Lcom/tebakgambar/levelselection/c0;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$e0;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p2}, Landroidx/databinding/g;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/a1;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/c0$c;->J:Lo8/a1;

    .line 4
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method W(Lcom/tebakgambar/model/QuestionSavedData;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/c0$c;->I:Lcom/tebakgambar/model/QuestionSavedData;

    .line 2
    iget-boolean v0, p1, Lcom/tebakgambar/model/QuestionSavedData;->open:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_18

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/levelselection/c0$c;->J:Lo8/a1;

    iget-object v0, v0, Lo8/a1;->P:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/levelselection/c0$c;->J:Lo8/a1;

    iget-object v0, v0, Lo8/a1;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_26

    .line 5
    :cond_18
    iget-object v0, p0, Lcom/tebakgambar/levelselection/c0$c;->J:Lo8/a1;

    iget-object v0, v0, Lo8/a1;->P:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/levelselection/c0$c;->J:Lo8/a1;

    iget-object v0, v0, Lo8/a1;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :goto_26
    iget-object v0, p0, Lcom/tebakgambar/levelselection/c0$c;->J:Lo8/a1;

    iget-object v0, v0, Lo8/a1;->P:Lcom/tebakgambar/component/CustomTextView;

    iget v1, p1, Lcom/tebakgambar/model/QuestionSavedData;->order:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-boolean v0, p1, Lcom/tebakgambar/model/QuestionSavedData;->isCheckPoint:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p1, Lcom/tebakgambar/model/QuestionSavedData;->solved:Z

    if-eqz v0, :cond_46

    .line 9
    iget-object p1, p0, Lcom/tebakgambar/levelselection/c0$c;->J:Lo8/a1;

    iget-object p1, p1, Lo8/a1;->P:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f080068

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_5f

    .line 10
    :cond_46
    iget-boolean p1, p1, Lcom/tebakgambar/model/QuestionSavedData;->isBoss:Z

    if-eqz p1, :cond_55

    .line 11
    iget-object p1, p0, Lcom/tebakgambar/levelselection/c0$c;->J:Lo8/a1;

    iget-object p1, p1, Lo8/a1;->P:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f080066

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_5f

    .line 12
    :cond_55
    iget-object p1, p0, Lcom/tebakgambar/levelselection/c0$c;->J:Lo8/a1;

    iget-object p1, p1, Lo8/a1;->P:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f080067

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_5f
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/c0$c;->K:Lcom/tebakgambar/levelselection/c0;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/c0;->v(Lcom/tebakgambar/levelselection/c0;)Lcom/tebakgambar/levelselection/c0$b;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/tebakgambar/levelselection/c0$c;->I:Lcom/tebakgambar/model/QuestionSavedData;

    iget-boolean p1, p1, Lcom/tebakgambar/model/QuestionSavedData;->open:Z

    if-eqz p1, :cond_19

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/levelselection/c0$c;->K:Lcom/tebakgambar/levelselection/c0;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/c0;->v(Lcom/tebakgambar/levelselection/c0;)Lcom/tebakgambar/levelselection/c0$b;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/levelselection/c0$c;->I:Lcom/tebakgambar/model/QuestionSavedData;

    invoke-interface {p1, v0}, Lcom/tebakgambar/levelselection/c0$b;->s(Lcom/tebakgambar/model/QuestionSavedData;)V

    :cond_19
    return-void
.end method

###### Class com.tebakgambar.levelselection.c0.d (com.tebakgambar.levelselection.c0$d)
.class public Lcom/tebakgambar/levelselection/c0$d;
.super Ljava/lang/Object;
.source "QuestionSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/QuestionSavedData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/m;

    invoke-direct {v0}, Landroidx/databinding/m;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/levelselection/c0$d;->a:Landroidx/databinding/m;

    return-void
.end method
