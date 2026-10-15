###### Class com.tebakgambar.selfie.h (com.tebakgambar.selfie.h)
.class public Lcom/tebakgambar/selfie/h;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SelfieFrameChooserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/selfie/h$c;,
        Lcom/tebakgambar/selfie/h$b;,
        Lcom/tebakgambar/selfie/h$d;,
        Lcom/tebakgambar/selfie/h$a;,
        Lcom/tebakgambar/selfie/h$e;
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
.field private d:Lcom/tebakgambar/selfie/h$e;

.field private e:Lcom/tebakgambar/selfie/h$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    return-void
.end method

.method static synthetic v(Lcom/tebakgambar/selfie/h;)Lcom/tebakgambar/selfie/h$a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/selfie/h;->e:Lcom/tebakgambar/selfie/h$a;

    return-object p0
.end method

.method static synthetic w(Lcom/tebakgambar/selfie/h;)Lcom/tebakgambar/selfie/h$e;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/selfie/h;->d:Lcom/tebakgambar/selfie/h$e;

    return-object p0
.end method


# virtual methods
.method public d()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/h;->d:Lcom/tebakgambar/selfie/h$e;

    iget-object v0, v0, Lcom/tebakgambar/selfie/h$e;->b:Landroidx/databinding/o;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public f(I)I
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_4
    invoke-virtual {p0}, Lcom/tebakgambar/selfie/h;->d()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_d

    return v1

    :cond_d
    const/4 p1, 0x2

    return p1
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView$e0;I)V
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/tebakgambar/selfie/h$c;

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/selfie/h;->d:Lcom/tebakgambar/selfie/h$e;

    iget-object v0, v0, Lcom/tebakgambar/selfie/h$e;->b:Landroidx/databinding/o;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/Level;

    .line 3
    check-cast p1, Lcom/tebakgambar/selfie/h$c;

    invoke-virtual {p1, p2}, Lcom/tebakgambar/selfie/h$c;->X(Lcom/tebakgambar/model/Level;)V

    :cond_15
    return-void
.end method

.method public m(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$e0;
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_18

    .line 1
    new-instance p2, Lcom/tebakgambar/selfie/h$d;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d004f

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tebakgambar/selfie/h$d;-><init>(Lcom/tebakgambar/selfie/h;Landroid/view/View;)V

    return-object p2

    :cond_18
    const/4 v1, 0x1

    const v2, 0x7f0d00a1

    if-ne p2, v1, :cond_30

    .line 2
    new-instance p2, Lcom/tebakgambar/selfie/h$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tebakgambar/selfie/h$b;-><init>(Lcom/tebakgambar/selfie/h;Landroid/view/View;)V

    return-object p2

    :cond_30
    const/4 v1, 0x2

    if-ne p2, v1, :cond_45

    .line 3
    new-instance p2, Lcom/tebakgambar/selfie/h$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tebakgambar/selfie/h$c;-><init>(Lcom/tebakgambar/selfie/h;Landroid/view/View;)V

    return-object p2

    :cond_45
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$e0;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->r(Landroidx/recyclerview/widget/RecyclerView$e0;)V

    .line 2
    instance-of v0, p1, Lcom/tebakgambar/selfie/h$c;

    if-eqz v0, :cond_c

    .line 3
    check-cast p1, Lcom/tebakgambar/selfie/h$c;

    invoke-virtual {p1}, Lcom/tebakgambar/selfie/h$c;->W()V

    :cond_c
    return-void
.end method

.method public x(Lcom/tebakgambar/selfie/h$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/h;->e:Lcom/tebakgambar/selfie/h$a;

    return-void
.end method

.method public y(Lcom/tebakgambar/selfie/h$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/h;->d:Lcom/tebakgambar/selfie/h$e;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->i()V

    return-void
.end method

###### Class com.tebakgambar.selfie.h.a (com.tebakgambar.selfie.h$a)
.class public interface abstract Lcom/tebakgambar/selfie/h$a;
.super Ljava/lang/Object;
.source "SelfieFrameChooserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/selfie/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract r(Lcom/tebakgambar/model/Level;)V
.end method

.method public abstract z()V
.end method

###### Class com.tebakgambar.selfie.h.b (com.tebakgambar.selfie.h$b)
.class public Lcom/tebakgambar/selfie/h$b;
.super Landroidx/recyclerview/widget/RecyclerView$e0;
.source "SelfieFrameChooserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/selfie/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field I:Lo8/u0;

.field final synthetic J:Lcom/tebakgambar/selfie/h;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/h;Landroid/view/View;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/h$b;->J:Lcom/tebakgambar/selfie/h;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$e0;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p2}, Landroidx/databinding/g;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/u0;

    iput-object p1, p0, Lcom/tebakgambar/selfie/h$b;->I:Lo8/u0;

    .line 4
    iget-object p1, p1, Lo8/u0;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$b;->I:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->S:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$b;->I:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->P:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$b;->I:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->O:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$b;->I:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->T:Lcom/tebakgambar/component/CustomTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$b;->I:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->S:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$b;->I:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->T:Lcom/tebakgambar/component/CustomTextView;

    const p2, 0x7f1200ca

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$b;->J:Lcom/tebakgambar/selfie/h;

    invoke-static {p1}, Lcom/tebakgambar/selfie/h;->v(Lcom/tebakgambar/selfie/h;)Lcom/tebakgambar/selfie/h$a;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$b;->J:Lcom/tebakgambar/selfie/h;

    invoke-static {p1}, Lcom/tebakgambar/selfie/h;->v(Lcom/tebakgambar/selfie/h;)Lcom/tebakgambar/selfie/h$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/tebakgambar/selfie/h$a;->a()V

    :cond_11
    return-void
.end method

###### Class com.tebakgambar.selfie.h.c (com.tebakgambar.selfie.h$c)
.class public Lcom/tebakgambar/selfie/h$c;
.super Landroidx/recyclerview/widget/RecyclerView$e0;
.source "SelfieFrameChooserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/selfie/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field I:Lcom/tebakgambar/model/Level;

.field J:Lo8/u0;

.field final synthetic K:Lcom/tebakgambar/selfie/h;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/h;Landroid/view/View;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/h$c;->K:Lcom/tebakgambar/selfie/h;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$e0;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p2}, Landroidx/databinding/g;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/u0;

    iput-object p1, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    .line 4
    iget-object p1, p1, Lo8/u0;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->S:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->O:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->T:Lcom/tebakgambar/component/CustomTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->S:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->P:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->T:Lcom/tebakgambar/component/CustomTextView;

    const p2, 0x7f120118

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method W()V
    .registers 1

    return-void
.end method

.method X(Lcom/tebakgambar/model/Level;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/h$c;->I:Lcom/tebakgambar/model/Level;

    .line 2
    iget v0, p1, Lcom/tebakgambar/model/Level;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object v0, v0, Lo8/u0;->S:Lcom/tebakgambar/component/CustomTextView;

    const v2, 0x7f120145

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_44

    .line 4
    :cond_12
    iget-object v0, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object v0, v0, Lo8/u0;->S:Lcom/tebakgambar/component/CustomTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120107

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :goto_44
    iget-object v0, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object v0, v0, Lo8/u0;->P:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object v0, v0, Lo8/u0;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object v0, v0, Lo8/u0;->T:Lcom/tebakgambar/component/CustomTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/selfie/h$c;->K:Lcom/tebakgambar/selfie/h;

    invoke-static {v0}, Lcom/tebakgambar/selfie/h;->w(Lcom/tebakgambar/selfie/h;)Lcom/tebakgambar/selfie/h$e;

    move-result-object v0

    iget-object v0, v0, Lcom/tebakgambar/selfie/h$e;->a:Landroidx/databinding/n;

    invoke-virtual {v0}, Landroidx/databinding/n;->y()I

    move-result v0

    iget v2, p1, Lcom/tebakgambar/model/Level;->id:I

    if-ge v0, v2, :cond_99

    if-eq v2, v1, :cond_99

    .line 9
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lv1/g;->v(Landroid/content/Context;)Lv1/j;

    move-result-object p1

    const v0, 0x7f080111

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lv1/j;->w(Ljava/lang/Integer;)Lv1/d;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/selfie/h$c$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/selfie/h$c$a;-><init>(Lcom/tebakgambar/selfie/h$c;)V

    .line 11
    invoke-virtual {p1, v0}, Lv1/c;->N(Lt2/f;)Lv1/c;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object v0, v0, Lo8/u0;->O:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {p1, v0}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    goto/16 :goto_116

    :cond_99
    const v0, 0x7f0800f1

    const v3, 0x7f08015a

    if-ne v2, v1, :cond_e4

    .line 13
    iget-object v1, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lv1/g;->v(Landroid/content/Context;)Lv1/j;

    move-result-object v1

    iget-object v2, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    .line 14
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/tebakgambar/model/Level;->getFrameResource(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lv1/j;->w(Ljava/lang/Integer;)Lv1/d;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v3}, Lv1/c;->Q(I)Lv1/c;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v0}, Lv1/c;->J(I)Lv1/c;

    move-result-object p1

    sget-object v0, Lb2/b;->q:Lb2/b;

    .line 17
    invoke-virtual {p1, v0}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/selfie/h$c$b;

    invoke-direct {v0, p0}, Lcom/tebakgambar/selfie/h$c$b;-><init>(Lcom/tebakgambar/selfie/h$c;)V

    .line 18
    invoke-virtual {p1, v0}, Lv1/c;->N(Lt2/f;)Lv1/c;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object v0, v0, Lo8/u0;->O:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {p1, v0}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    goto :goto_116

    .line 20
    :cond_e4
    iget-object v1, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lv1/g;->v(Landroid/content/Context;)Lv1/j;

    move-result-object v1

    iget-object p1, p1, Lcom/tebakgambar/model/Level;->frameUrl:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, p1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v3}, Lv1/c;->Q(I)Lv1/c;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v0}, Lv1/c;->J(I)Lv1/c;

    move-result-object p1

    sget-object v0, Lb2/b;->q:Lb2/b;

    .line 24
    invoke-virtual {p1, v0}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/selfie/h$c$c;

    invoke-direct {v0, p0}, Lcom/tebakgambar/selfie/h$c$c;-><init>(Lcom/tebakgambar/selfie/h$c;)V

    .line 25
    invoke-virtual {p1, v0}, Lv1/c;->N(Lt2/f;)Lv1/c;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object v0, v0, Lo8/u0;->O:Landroid/widget/ImageView;

    .line 26
    invoke-virtual {p1, v0}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    :goto_116
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c;->K:Lcom/tebakgambar/selfie/h;

    invoke-static {p1}, Lcom/tebakgambar/selfie/h;->v(Lcom/tebakgambar/selfie/h;)Lcom/tebakgambar/selfie/h$a;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c;->I:Lcom/tebakgambar/model/Level;

    iget p1, p1, Lcom/tebakgambar/model/Level;->id:I

    iget-object v0, p0, Lcom/tebakgambar/selfie/h$c;->K:Lcom/tebakgambar/selfie/h;

    invoke-static {v0}, Lcom/tebakgambar/selfie/h;->w(Lcom/tebakgambar/selfie/h;)Lcom/tebakgambar/selfie/h$e;

    move-result-object v0

    iget-object v0, v0, Lcom/tebakgambar/selfie/h$e;->a:Landroidx/databinding/n;

    invoke-virtual {v0}, Landroidx/databinding/n;->y()I

    move-result v0

    if-gt p1, v0, :cond_25

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c;->K:Lcom/tebakgambar/selfie/h;

    invoke-static {p1}, Lcom/tebakgambar/selfie/h;->v(Lcom/tebakgambar/selfie/h;)Lcom/tebakgambar/selfie/h$a;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/selfie/h$c;->I:Lcom/tebakgambar/model/Level;

    invoke-interface {p1, v0}, Lcom/tebakgambar/selfie/h$a;->r(Lcom/tebakgambar/model/Level;)V

    :cond_25
    return-void
.end method

###### Class com.tebakgambar.selfie.h.c.a (com.tebakgambar.selfie.h$c$a)
.class Lcom/tebakgambar/selfie/h$c$a;
.super Ljava/lang/Object;
.source "SelfieFrameChooserAdapter.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/h$c;->X(Lcom/tebakgambar/model/Level;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "Ljava/lang/Integer;",
        "Ll2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/selfie/h$c;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/h$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/h$c$a;->a:Lcom/tebakgambar/selfie/h$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Ll2/b;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/selfie/h$c$a;->d(Ll2/b;Ljava/lang/Integer;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/selfie/h$c$a;->c(Ljava/lang/Exception;Ljava/lang/Integer;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Exception;Ljava/lang/Integer;Lv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/Integer;",
            "Lv2/j<",
            "Ll2/b;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$a;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->O:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$a;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->T:Lcom/tebakgambar/component/CustomTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return p2
.end method

.method public d(Ll2/b;Ljava/lang/Integer;Lv2/j;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/b;",
            "Ljava/lang/Integer;",
            "Lv2/j<",
            "Ll2/b;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$a;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->O:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$a;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->P:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$a;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->T:Lcom/tebakgambar/component/CustomTextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return p2
.end method

###### Class com.tebakgambar.selfie.h.c.b (com.tebakgambar.selfie.h$c$b)
.class Lcom/tebakgambar/selfie/h$c$b;
.super Ljava/lang/Object;
.source "SelfieFrameChooserAdapter.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/h$c;->X(Lcom/tebakgambar/model/Level;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "Ljava/lang/Integer;",
        "Ll2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/selfie/h$c;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/h$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/h$c$b;->a:Lcom/tebakgambar/selfie/h$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Ll2/b;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/selfie/h$c$b;->d(Ll2/b;Ljava/lang/Integer;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/selfie/h$c$b;->c(Ljava/lang/Exception;Ljava/lang/Integer;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Exception;Ljava/lang/Integer;Lv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/Integer;",
            "Lv2/j<",
            "Ll2/b;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$b;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->O:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$b;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->P:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$b;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->T:Lcom/tebakgambar/component/CustomTextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return p2
.end method

.method public d(Ll2/b;Ljava/lang/Integer;Lv2/j;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/b;",
            "Ljava/lang/Integer;",
            "Lv2/j<",
            "Ll2/b;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$b;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->O:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$b;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->P:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$b;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->T:Lcom/tebakgambar/component/CustomTextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return p2
.end method

###### Class com.tebakgambar.selfie.h.c.C0134c (com.tebakgambar.selfie.h$c$c)
.class Lcom/tebakgambar/selfie/h$c$c;
.super Ljava/lang/Object;
.source "SelfieFrameChooserAdapter.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/h$c;->X(Lcom/tebakgambar/model/Level;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "Ljava/lang/String;",
        "Ll2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/selfie/h$c;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/h$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/h$c$c;->a:Lcom/tebakgambar/selfie/h$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Ll2/b;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/selfie/h$c$c;->d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/selfie/h$c$c;->c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$c;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->O:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$c;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->P:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$c;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->T:Lcom/tebakgambar/component/CustomTextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return p2
.end method

.method public d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/b;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$c;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->O:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$c;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->P:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$c$c;->a:Lcom/tebakgambar/selfie/h$c;

    iget-object p1, p1, Lcom/tebakgambar/selfie/h$c;->J:Lo8/u0;

    iget-object p1, p1, Lo8/u0;->T:Lcom/tebakgambar/component/CustomTextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return p2
.end method

###### Class com.tebakgambar.selfie.h.d (com.tebakgambar.selfie.h$d)
.class public Lcom/tebakgambar/selfie/h$d;
.super Landroidx/recyclerview/widget/RecyclerView$e0;
.source "SelfieFrameChooserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/selfie/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field I:Lo8/g0;

.field final synthetic J:Lcom/tebakgambar/selfie/h;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/h;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/h$d;->J:Lcom/tebakgambar/selfie/h;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$e0;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p2}, Landroidx/databinding/g;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/g0;

    iput-object p1, p0, Lcom/tebakgambar/selfie/h$d;->I:Lo8/g0;

    .line 4
    iget-object p1, p1, Lo8/g0;->O:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$d;->J:Lcom/tebakgambar/selfie/h;

    invoke-static {p1}, Lcom/tebakgambar/selfie/h;->v(Lcom/tebakgambar/selfie/h;)Lcom/tebakgambar/selfie/h$a;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/selfie/h$d;->J:Lcom/tebakgambar/selfie/h;

    invoke-static {p1}, Lcom/tebakgambar/selfie/h;->v(Lcom/tebakgambar/selfie/h;)Lcom/tebakgambar/selfie/h$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/tebakgambar/selfie/h$a;->z()V

    :cond_11
    return-void
.end method

###### Class com.tebakgambar.selfie.h.e (com.tebakgambar.selfie.h$e)
.class Lcom/tebakgambar/selfie/h$e;
.super Ljava/lang/Object;
.source "SelfieFrameChooserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/selfie/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:Landroidx/databinding/n;

.field b:Landroidx/databinding/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/o<",
            "Lcom/tebakgambar/model/Level;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/n;

    invoke-direct {v0}, Landroidx/databinding/n;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/selfie/h$e;->a:Landroidx/databinding/n;

    .line 3
    new-instance v0, Landroidx/databinding/k;

    invoke-direct {v0}, Landroidx/databinding/k;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/selfie/h$e;->b:Landroidx/databinding/o;

    return-void
.end method
