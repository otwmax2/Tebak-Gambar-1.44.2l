###### Class com.tebakgambar.selfie.SelfieFrameChooserActivity (com.tebakgambar.selfie.SelfieFrameChooserActivity)
.class public Lcom/tebakgambar/selfie/SelfieFrameChooserActivity;
.super Lj8/t;
.source "SelfieFrameChooserActivity.java"

# interfaces
.implements Lcom/tebakgambar/selfie/h$a;


# instance fields
.field public questionGlobalIndex:I

.field private y:Lo8/q;

.field private z:Lcom/tebakgambar/selfie/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lj8/t;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0xb

    if-ne p1, p3, :cond_10

    const/4 p1, -0x1

    if-ne p2, p1, :cond_10

    .line 2
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_10
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->b(Landroidx/fragment/app/e;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Lcom/tebakgambar/selfie/i;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/selfie/i;

    iput-object p1, p0, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity;->z:Lcom/tebakgambar/selfie/i;

    const p1, 0x7f0d0029

    .line 3
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/q;

    iput-object p1, p0, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity;->y:Lo8/q;

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity;->z:Lcom/tebakgambar/selfie/i;

    invoke-virtual {p1, v0}, Lo8/q;->u0(Lcom/tebakgambar/selfie/i;)V

    .line 5
    invoke-static {p0}, Ly2/a;->b(Landroid/app/Activity;)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity;->y:Lo8/q;

    iget-object p1, p1, Lo8/q;->P:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 7
    new-instance p1, Lcom/tebakgambar/selfie/h;

    invoke-direct {p1}, Lcom/tebakgambar/selfie/h;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity;->z:Lcom/tebakgambar/selfie/i;

    iget-object v0, v0, Lcom/tebakgambar/selfie/i;->s:Lcom/tebakgambar/selfie/h$e;

    invoke-virtual {p1, v0}, Lcom/tebakgambar/selfie/h;->y(Lcom/tebakgambar/selfie/h$e;)V

    .line 9
    invoke-virtual {p1, p0}, Lcom/tebakgambar/selfie/h;->x(Lcom/tebakgambar/selfie/h$a;)V

    .line 10
    iget-object v0, p0, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity;->y:Lo8/q;

    iget-object v0, v0, Lo8/q;->P:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    const p1, 0x7f0a0120

    .line 11
    invoke-virtual {p0, p1}, Lj8/t;->D0(I)V

    return-void
.end method

.method public r(Lcom/tebakgambar/model/Level;)V
    .registers 6

    const v0, 0x7f110005

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regular_frame - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chooseSelfieFrame"

    const-string v2, "choose selfie frame"

    const-string v3, "click on selfie frame option"

    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity;->questionGlobalIndex:I

    const-string v1, "frameLevel"

    if-nez v0, :cond_3d

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget p1, p1, Lcom/tebakgambar/model/Level;->id:I

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_57

    .line 7
    :cond_3d
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget p1, p1, Lcom/tebakgambar/model/Level;->id:I

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget v0, p0, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity;->questionGlobalIndex:I

    const-string v1, "questionGlobalIndex"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xb

    .line 10
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_57
    return-void
.end method

.method public z()V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->c()Lcom/tebakgambar/howtoplay/HowToPlayActivity$$IntentBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tebakgambar/howtoplay/HowToPlayActivity$$IntentBuilder;->jumpToQuiz(Z)Lcom/tebakgambar/howtoplay/HowToPlayActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/howtoplay/HowToPlayActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
