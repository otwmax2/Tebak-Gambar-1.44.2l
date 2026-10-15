###### Class j8.c0 (j8.c0)
.class public Lj8/c0;
.super Landroid/app/Dialog;
.source "CustomDialogReset.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj8/c0$i;
    }
.end annotation


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/String;

.field C:Ljava/lang/String;

.field o:Landroid/content/Context;

.field p:Lcom/tebakgambar/component/CustomTextView;

.field q:Lcom/tebakgambar/component/CustomTextView;

.field r:Lcom/tebakgambar/component/CustomTextView;

.field s:Lcom/tebakgambar/component/CustomButton;

.field t:Lcom/tebakgambar/component/CustomButton;

.field u:Lcom/tebakgambar/component/CustomButton;

.field v:Lj8/c0$i;

.field w:Z

.field x:Z

.field y:Ljava/lang/Integer;

.field z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 4

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lj8/c0;->w:Z

    iput-boolean p2, p0, Lj8/c0;->x:Z

    const-string p2, ""

    .line 21
    iput-object p2, p0, Lj8/c0;->z:Ljava/lang/String;

    iput-object p2, p0, Lj8/c0;->A:Ljava/lang/String;

    iput-object p2, p0, Lj8/c0;->B:Ljava/lang/String;

    iput-object p2, p0, Lj8/c0;->C:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lj8/c0;->o:Landroid/content/Context;

    .line 23
    iput-boolean p3, p0, Lj8/c0;->x:Z

    .line 24
    invoke-direct {p0}, Lj8/c0;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/Integer;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lj8/c0;->w:Z

    iput-boolean p2, p0, Lj8/c0;->x:Z

    const-string p2, ""

    .line 3
    iput-object p2, p0, Lj8/c0;->z:Ljava/lang/String;

    iput-object p2, p0, Lj8/c0;->A:Ljava/lang/String;

    iput-object p2, p0, Lj8/c0;->B:Ljava/lang/String;

    iput-object p2, p0, Lj8/c0;->C:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lj8/c0;->o:Landroid/content/Context;

    .line 5
    iput-boolean p3, p0, Lj8/c0;->w:Z

    .line 6
    iput-object p4, p0, Lj8/c0;->z:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lj8/c0;->y:Ljava/lang/Integer;

    .line 8
    invoke-direct {p0}, Lj8/c0;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lj8/c0;->w:Z

    iput-boolean p2, p0, Lj8/c0;->x:Z

    const-string p2, ""

    .line 11
    iput-object p2, p0, Lj8/c0;->z:Ljava/lang/String;

    iput-object p2, p0, Lj8/c0;->A:Ljava/lang/String;

    iput-object p2, p0, Lj8/c0;->B:Ljava/lang/String;

    iput-object p2, p0, Lj8/c0;->C:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lj8/c0;->o:Landroid/content/Context;

    .line 13
    iput-object p5, p0, Lj8/c0;->A:Ljava/lang/String;

    .line 14
    iput-boolean p3, p0, Lj8/c0;->w:Z

    .line 15
    iput-object p4, p0, Lj8/c0;->z:Ljava/lang/String;

    .line 16
    iput-object p6, p0, Lj8/c0;->B:Ljava/lang/String;

    .line 17
    iput-object p7, p0, Lj8/c0;->C:Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Lj8/c0;->b()V

    return-void
.end method

.method private a()V
    .registers 3

    .line 1
    new-instance v0, Lj8/c0$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lj8/c0$a;-><init>(Lj8/c0;Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/c;

    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/activity/g;)V

    :cond_19
    return-void
.end method

.method private b()V
    .registers 11

    .line 1
    iget-object v0, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_116

    .line 2
    iget-boolean v0, p0, Lj8/c0;->x:Z

    if-nez v0, :cond_41

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0d0058

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f0a02c5

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lj8/c0;->q:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02d5

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02a4

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a02b5

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    goto/16 :goto_116

    .line 9
    :cond_41
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0d0059

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f0a007c

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/c0;->u:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a02a6

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lj8/c0;->r:Lcom/tebakgambar/component/CustomTextView;

    .line 13
    iget-object v0, p0, Lj8/c0;->u:Lcom/tebakgambar/component/CustomButton;

    const-string v3, " "

    invoke-virtual {v0, v3}, Landroid/widget/Button;->append(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lj8/c0;->u:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v0, Landroid/text/SpannableString;

    const-string v4, "FACEBOOK"

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v4, Lj8/c0$e;

    invoke-direct {v4, p0}, Lj8/c0$e;-><init>(Lj8/c0;)V

    .line 17
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 18
    new-instance v4, Landroid/text/SpannableString;

    const-string v5, "TWITTER"

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 19
    new-instance v5, Lj8/c0$f;

    invoke-direct {v5, p0}, Lj8/c0$f;-><init>(Lj8/c0;)V

    .line 20
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v4, v5, v2, v7, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 21
    new-instance v5, Landroid/text/SpannableString;

    const-string v7, "LINE"

    invoke-direct {v5, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    new-instance v7, Lj8/c0$g;

    invoke-direct {v7, p0}, Lj8/c0$g;-><init>(Lj8/c0;)V

    .line 23
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v8

    invoke-virtual {v5, v7, v2, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 24
    new-instance v7, Landroid/text/SpannableString;

    const-string v8, "INSTAGRAM"

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 25
    new-instance v8, Lj8/c0$h;

    invoke-direct {v8, p0}, Lj8/c0$h;-><init>(Lj8/c0;)V

    .line 26
    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v9

    invoke-virtual {v7, v8, v2, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 27
    iget-object v6, p0, Lj8/c0;->r:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 28
    iget-object v6, p0, Lj8/c0;->r:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v3, p0, Lj8/c0;->r:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lj8/c0;->r:Lcom/tebakgambar/component/CustomTextView;

    const-string v3, " , "

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lj8/c0;->r:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lj8/c0;->r:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lj8/c0;->r:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lj8/c0;->r:Lcom/tebakgambar/component/CustomTextView;

    iget-object v3, p0, Lj8/c0;->o:Landroid/content/Context;

    const v4, 0x7f1201c7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lj8/c0;->r:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lj8/c0;->r:Lcom/tebakgambar/component/CustomTextView;

    iget-object v3, p0, Lj8/c0;->o:Landroid/content/Context;

    const v4, 0x7f1201a4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lj8/c0;->r:Lcom/tebakgambar/component/CustomTextView;

    iget-object v3, p0, Lj8/c0;->o:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120134

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 38
    :cond_116
    :goto_116
    :try_start_116
    iget-boolean v0, p0, Lj8/c0;->w:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_150

    .line 39
    iget-object v0, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    iget-object v3, p0, Lj8/c0;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    iget-object v3, p0, Lj8/c0;->o:Landroid/content/Context;

    .line 43
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lj8/c0;->y:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 44
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    iget-object v0, p0, Lj8/c0;->z:Ljava/lang/String;

    const-string v2, "loading"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_162

    .line 46
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_162

    .line 47
    :cond_150
    iget-object v0, p0, Lj8/c0;->q:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_162} :catch_162

    .line 51
    :catch_162
    :cond_162
    :goto_162
    invoke-direct {p0}, Lj8/c0;->a()V

    return-void
.end method


# virtual methods
.method public d()V
    .registers 5

    .line 1
    iget-object v0, p0, Lj8/c0;->q:Lcom/tebakgambar/component/CustomTextView;

    iget-object v1, p0, Lj8/c0;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lj8/c0;->q:Lcom/tebakgambar/component/CustomTextView;

    iget-object v1, p0, Lj8/c0;->A:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_13

    const/16 v1, 0x8

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    iget-object v1, p0, Lj8/c0;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    iget-object v1, p0, Lj8/c0;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    iget-object v1, p0, Lj8/c0;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    iget-object v1, p0, Lj8/c0;->C:Ljava/lang/String;

    if-nez v1, :cond_35

    const/16 v1, 0x8

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    iget-object v1, p0, Lj8/c0;->B:Ljava/lang/String;

    if-nez v1, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/c0;->z:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lj8/c0;->b()V

    return-void
.end method

.method public o(Lj8/c0$i;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/c0;->v:Lj8/c0$i;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_a

    .line 2
    iget-object p1, p0, Lj8/c0;->v:Lj8/c0$i;

    invoke-interface {p1}, Lj8/c0$i;->a()V

    goto :goto_1b

    .line 3
    :cond_a
    iget-object v0, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_14

    .line 4
    iget-object p1, p0, Lj8/c0;->v:Lj8/c0$i;

    invoke-interface {p1}, Lj8/c0$i;->b()V

    goto :goto_1b

    .line 5
    :cond_14
    iget-object v0, p0, Lj8/c0;->u:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_1b

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0d0058

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f0a02c5

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lj8/c0;->q:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02d5

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02a4

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a02b5

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    .line 8
    :cond_3a
    iget-object v0, p0, Lj8/c0;->q:Lcom/tebakgambar/component/CustomTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p2, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public q()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/c0;->q:Lcom/tebakgambar/component/CustomTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lj8/c0;->q:Lcom/tebakgambar/component/CustomTextView;

    iget-object v1, p0, Lj8/c0;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    iget-object v1, p0, Lj8/c0;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    iget-object v1, p0, Lj8/c0;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    iget-object v1, p0, Lj8/c0;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public r(Z)V
    .registers 7

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2
    iget-object v1, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    const v2, 0x7f12005d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 3
    iget-object v1, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lj8/c0;->q:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    iget-object v1, p0, Lj8/c0;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_87

    .line 7
    new-instance p1, Landroid/text/SpannableString;

    const-string v0, "facebook"

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v0, Lj8/c0$b;

    invoke-direct {v0, p0}, Lj8/c0$b;-><init>(Lj8/c0;)V

    .line 9
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 10
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "twitter"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v1, Lj8/c0$c;

    invoke-direct {v1, p0}, Lj8/c0$c;-><init>(Lj8/c0;)V

    .line 12
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 13
    iget-object v1, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 14
    iget-object v1, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v1, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    iget-object v1, p0, Lj8/c0;->o:Landroid/content/Context;

    const v2, 0x7f1201c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    iget-object v0, p0, Lj8/c0;->o:Landroid/content/Context;

    const v1, 0x7f1201a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_87
    return-void
.end method

.method public s()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/c0;->p:Lcom/tebakgambar/component/CustomTextView;

    iget-object v1, p0, Lj8/c0;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lj8/c0;->q:Lcom/tebakgambar/component/CustomTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    iget-object v1, p0, Lj8/c0;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    iget-object v1, p0, Lj8/c0;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lj8/c0;->s:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    iget-object v0, p0, Lj8/c0;->C:Ljava/lang/String;

    if-nez v0, :cond_17

    iget-object v0, p0, Lj8/c0;->B:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 3
    iget-object v0, p0, Lj8/c0;->t:Lcom/tebakgambar/component/CustomButton;

    new-instance v1, Lj8/c0$d;

    invoke-direct {v1, p0}, Lj8/c0$d;-><init>(Lj8/c0;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    return-void
.end method

###### Class j8.c0.a (j8.c0$a)
.class Lj8/c0$a;
.super Landroidx/activity/g;
.source "CustomDialogReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/c0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lj8/c0;


# direct methods
.method constructor <init>(Lj8/c0;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lj8/c0$a;->d:Lj8/c0;

    invoke-direct {p0, p2}, Landroidx/activity/g;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/c0$a;->d:Lj8/c0;

    iget-object v0, v0, Lj8/c0;->v:Lj8/c0$i;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lj8/c0$i;->b()V

    :cond_9
    return-void
.end method

###### Class j8.c0.b (j8.c0$b)
.class Lj8/c0$b;
.super Landroid/text/style/ClickableSpan;
.source "CustomDialogReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/c0;->r(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lj8/c0;


# direct methods
.method constructor <init>(Lj8/c0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/c0$b;->o:Lj8/c0;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lj8/c0$b;->o:Lj8/c0;

    iget-object p1, p1, Lj8/c0;->o:Landroid/content/Context;

    invoke-static {p1}, Ly8/a;->c(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "android.intent.action.VIEW"

    if-eqz p1, :cond_22

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "fb://page/566897873338343"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lj8/c0$b;->o:Lj8/c0;

    iget-object v0, v0, Lj8/c0;->o:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_34

    .line 5
    :cond_22
    iget-object p1, p0, Lj8/c0$b;->o:Lj8/c0;

    iget-object p1, p1, Lj8/c0;->o:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "https://m.facebook.com/TebakGambarOfficial"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_34
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const-string v0, "#3b5998"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/16 v0, 0xff

    const/16 v1, 0x3b

    const/16 v2, 0x59

    const/16 v3, 0x98

    .line 3
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/TextPaint;->setARGB(IIII)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method

###### Class j8.c0.c (j8.c0$c)
.class Lj8/c0$c;
.super Landroid/text/style/ClickableSpan;
.source "CustomDialogReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/c0;->r(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lj8/c0;


# direct methods
.method constructor <init>(Lj8/c0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/c0$c;->o:Lj8/c0;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lj8/c0$c;->o:Lj8/c0;

    iget-object p1, p1, Lj8/c0;->o:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://twitter.com/tebakgambar_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const-string v0, "#4099FF"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/16 v0, 0xff

    const/16 v1, 0x40

    const/16 v2, 0x99

    .line 3
    invoke-virtual {p1, v0, v1, v2, v0}, Landroid/text/TextPaint;->setARGB(IIII)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method

###### Class j8.c0.d (j8.c0$d)
.class Lj8/c0$d;
.super Ljava/lang/Object;
.source "CustomDialogReset.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/c0;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lj8/c0;


# direct methods
.method constructor <init>(Lj8/c0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/c0$d;->o:Lj8/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/c0$d;->o:Lj8/c0;

    iget-object v0, v0, Lj8/c0;->v:Lj8/c0$i;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lj8/c0$i;->b()V

    :cond_9
    return-void
.end method

###### Class j8.c0.e (j8.c0$e)
.class Lj8/c0$e;
.super Landroid/text/style/ClickableSpan;
.source "CustomDialogReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/c0;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lj8/c0;


# direct methods
.method constructor <init>(Lj8/c0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/c0$e;->o:Lj8/c0;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lj8/c0$e;->o:Lj8/c0;

    iget-object p1, p1, Lj8/c0;->o:Landroid/content/Context;

    invoke-static {p1}, Ly8/a;->i(Landroid/content/Context;)Z

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const-string v0, "#3b5998"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/16 v0, 0xff

    const/16 v1, 0x3b

    const/16 v2, 0x59

    const/16 v3, 0x98

    .line 3
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/TextPaint;->setARGB(IIII)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method

###### Class j8.c0.f (j8.c0$f)
.class Lj8/c0$f;
.super Landroid/text/style/ClickableSpan;
.source "CustomDialogReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/c0;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lj8/c0;


# direct methods
.method constructor <init>(Lj8/c0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/c0$f;->o:Lj8/c0;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lj8/c0$f;->o:Lj8/c0;

    iget-object p1, p1, Lj8/c0;->o:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://twitter.com/tebakgambar_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const-string v0, "#4099FF"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/16 v0, 0xff

    const/16 v1, 0x40

    const/16 v2, 0x99

    .line 3
    invoke-virtual {p1, v0, v1, v2, v0}, Landroid/text/TextPaint;->setARGB(IIII)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method

###### Class j8.c0.g (j8.c0$g)
.class Lj8/c0$g;
.super Landroid/text/style/ClickableSpan;
.source "CustomDialogReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/c0;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lj8/c0;


# direct methods
.method constructor <init>(Lj8/c0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/c0$g;->o:Lj8/c0;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lj8/c0$g;->o:Lj8/c0;

    iget-object p1, p1, Lj8/c0;->o:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "http://tebakgambar.com/lineat"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const-string v0, "#00C300"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/16 v0, 0xff

    const/4 v1, 0x0

    const/16 v2, 0xc3

    .line 3
    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/text/TextPaint;->setARGB(IIII)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method

###### Class j8.c0.h (j8.c0$h)
.class Lj8/c0$h;
.super Landroid/text/style/ClickableSpan;
.source "CustomDialogReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/c0;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lj8/c0;


# direct methods
.method constructor <init>(Lj8/c0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/c0$h;->o:Lj8/c0;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lj8/c0$h;->o:Lj8/c0;

    iget-object p1, p1, Lj8/c0;->o:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://instagram.com/tebakgambar_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const-string v0, "#517fa4"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/16 v0, 0xff

    const/16 v1, 0x51

    const/16 v2, 0x7f

    const/16 v3, 0xa4

    .line 3
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/TextPaint;->setARGB(IIII)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method

###### Class j8.c0.i (j8.c0$i)
.class public interface abstract Lj8/c0$i;
.super Ljava/lang/Object;
.source "CustomDialogReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "i"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method
