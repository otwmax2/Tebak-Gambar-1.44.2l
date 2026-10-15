###### Class com.tebakgambar.howtoplay.HowToPlayActivity (com.tebakgambar.howtoplay.HowToPlayActivity)
.class public Lcom/tebakgambar/howtoplay/HowToPlayActivity;
.super Lj8/t;
.source "HowToPlayActivity.java"


# instance fields
.field jumpToQuiz:Z

.field private y:Lo8/g;

.field private z:Lr8/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    return-void
.end method

.method public static synthetic U0(Lcom/tebakgambar/howtoplay/HowToPlayActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->V0()V

    return-void
.end method

.method private synthetic V0()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v1, v0, Lo8/g;->R:Landroid/widget/ScrollView;

    iget-object v0, v0, Lo8/g;->U:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method private W0()V
    .registers 9

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "FACEBOOK"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v1, Lcom/tebakgambar/howtoplay/HowToPlayActivity$a;

    invoke-direct {v1, p0}, Lcom/tebakgambar/howtoplay/HowToPlayActivity$a;-><init>(Lcom/tebakgambar/howtoplay/HowToPlayActivity;)V

    .line 3
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4
    new-instance v1, Landroid/text/SpannableString;

    const-string v2, "TWITTER"

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v2, Lcom/tebakgambar/howtoplay/HowToPlayActivity$b;

    invoke-direct {v2, p0}, Lcom/tebakgambar/howtoplay/HowToPlayActivity$b;-><init>(Lcom/tebakgambar/howtoplay/HowToPlayActivity;)V

    .line 6
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7
    new-instance v2, Landroid/text/SpannableString;

    const-string v5, "LINE"

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v5, Lcom/tebakgambar/howtoplay/HowToPlayActivity$c;

    invoke-direct {v5, p0}, Lcom/tebakgambar/howtoplay/HowToPlayActivity$c;-><init>(Lcom/tebakgambar/howtoplay/HowToPlayActivity;)V

    .line 9
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v2, v5, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 10
    new-instance v5, Landroid/text/SpannableString;

    const-string v6, "INSTAGRAM"

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v6, Lcom/tebakgambar/howtoplay/HowToPlayActivity$d;

    invoke-direct {v6, p0}, Lcom/tebakgambar/howtoplay/HowToPlayActivity$d;-><init>(Lcom/tebakgambar/howtoplay/HowToPlayActivity;)V

    .line 12
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v5, v6, v3, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 13
    iget-object v3, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v3, v3, Lo8/g;->T:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 14
    iget-object v3, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v3, v3, Lo8/g;->T:Lcom/tebakgambar/component/CustomTextView;

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v3, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v3, v3, Lo8/g;->T:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v0, v0, Lo8/g;->T:Lcom/tebakgambar/component/CustomTextView;

    const-string v3, " , "

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v0, v0, Lo8/g;->T:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v0, v0, Lo8/g;->T:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v0, v0, Lo8/g;->T:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v0, v0, Lo8/g;->T:Lcom/tebakgambar/component/CustomTextView;

    const v1, 0x7f1201c7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v0, v0, Lo8/g;->T:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v0, v0, Lo8/g;->T:Lcom/tebakgambar/component/CustomTextView;

    const v1, 0x7f1201a4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v0, v0, Lo8/g;->T:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 24
    iget-boolean v0, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->jumpToQuiz:Z

    if-eqz v0, :cond_d1

    .line 25
    iget-object v0, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v0, v0, Lo8/g;->R:Landroid/widget/ScrollView;

    new-instance v1, Lr8/a;

    invoke-direct {v1, p0}, Lr8/a;-><init>(Lcom/tebakgambar/howtoplay/HowToPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_d1
    iget-object v0, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v0, v0, Lo8/g;->W:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    iget-object v0, v0, Lo8/g;->V:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->b(Landroidx/fragment/app/e;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Lr8/b;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Lr8/b;

    iput-object p1, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->z:Lr8/b;

    const p1, 0x7f0d0021

    .line 3
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/g;

    iput-object p1, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->y:Lo8/g;

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->z:Lr8/b;

    invoke-virtual {p1, v0}, Lo8/g;->u0(Lr8/b;)V

    .line 5
    invoke-static {p0}, Ly2/a;->b(Landroid/app/Activity;)V

    .line 6
    invoke-direct {p0}, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->W0()V

    const p1, 0x7f0a0120

    .line 7
    invoke-virtual {p0, p1}, Lj8/t;->D0(I)V

    return-void
.end method

###### Class com.tebakgambar.howtoplay.HowToPlayActivity.a (com.tebakgambar.howtoplay.HowToPlayActivity$a)
.class Lcom/tebakgambar/howtoplay/HowToPlayActivity$a;
.super Landroid/text/style/ClickableSpan;
.source "HowToPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/howtoplay/HowToPlayActivity;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/howtoplay/HowToPlayActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity$a;->o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity$a;->o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;

    invoke-static {p1}, Ly8/a;->i(Landroid/content/Context;)Z

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method

###### Class com.tebakgambar.howtoplay.HowToPlayActivity.b (com.tebakgambar.howtoplay.HowToPlayActivity$b)
.class Lcom/tebakgambar/howtoplay/HowToPlayActivity$b;
.super Landroid/text/style/ClickableSpan;
.source "HowToPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/howtoplay/HowToPlayActivity;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/howtoplay/HowToPlayActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity$b;->o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity$b;->o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;

    invoke-static {p1}, Ly8/a;->m(Landroid/content/Context;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method

###### Class com.tebakgambar.howtoplay.HowToPlayActivity.c (com.tebakgambar.howtoplay.HowToPlayActivity$c)
.class Lcom/tebakgambar/howtoplay/HowToPlayActivity$c;
.super Landroid/text/style/ClickableSpan;
.source "HowToPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/howtoplay/HowToPlayActivity;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/howtoplay/HowToPlayActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity$c;->o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity$c;->o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;

    invoke-static {p1}, Ly8/a;->k(Landroid/content/Context;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method

###### Class com.tebakgambar.howtoplay.HowToPlayActivity.d (com.tebakgambar.howtoplay.HowToPlayActivity$d)
.class Lcom/tebakgambar/howtoplay/HowToPlayActivity$d;
.super Landroid/text/style/ClickableSpan;
.source "HowToPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/howtoplay/HowToPlayActivity;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/howtoplay/HowToPlayActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity$d;->o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/howtoplay/HowToPlayActivity$d;->o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;

    invoke-static {p1}, Ly8/a;->j(Landroid/content/Context;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method

###### Class r8.a (r8.a)
.class public final synthetic Lr8/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/howtoplay/HowToPlayActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr8/a;->o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lr8/a;->o:Lcom/tebakgambar/howtoplay/HowToPlayActivity;

    invoke-static {v0}, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->U0(Lcom/tebakgambar/howtoplay/HowToPlayActivity;)V

    return-void
.end method
