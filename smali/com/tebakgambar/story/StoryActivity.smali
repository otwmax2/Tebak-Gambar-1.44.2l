###### Class com.tebakgambar.story.StoryActivity (com.tebakgambar.story.StoryActivity)
.class public Lcom/tebakgambar/story/StoryActivity;
.super Lj8/t;
.source "StoryActivity.java"


# instance fields
.field private A:Lcom/tebakgambar/component/CustomTextView;

.field private B:Lcom/tebakgambar/component/CustomImageView;

.field private C:Landroid/view/animation/Animation;

.field private D:Landroid/view/animation/Animation;

.field private E:Lcom/tebakgambar/component/CustomButton;

.field private F:Landroid/os/Handler;

.field private G:Ljava/lang/Runnable;

.field H:Z

.field private y:I

.field private z:Lcom/tebakgambar/component/CustomTextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/tebakgambar/story/StoryActivity;->y:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tebakgambar/story/StoryActivity;->H:Z

    return-void
.end method

.method public static synthetic U0(Lcom/tebakgambar/story/StoryActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/story/StoryActivity;->Y0()V

    return-void
.end method

.method public static synthetic V0(Lcom/tebakgambar/story/StoryActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/story/StoryActivity;->Z0(Landroid/view/View;)V

    return-void
.end method

.method private W0()V
    .registers 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->F:Landroid/os/Handler;

    .line 2
    new-instance v0, Lx8/b;

    invoke-direct {v0, p0}, Lx8/b;-><init>(Lcom/tebakgambar/story/StoryActivity;)V

    iput-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->G:Ljava/lang/Runnable;

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->E:Lcom/tebakgambar/component/CustomButton;

    new-instance v1, Lx8/a;

    invoke-direct {v1, p0}, Lx8/a;-><init>(Lcom/tebakgambar/story/StoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private X0()V
    .registers 4

    const v0, 0x7f0a02df

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->z:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02e0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->A:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a0096

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->E:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a014c

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomImageView;

    iput-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->B:Lcom/tebakgambar/component/CustomImageView;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01001d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->C:Landroid/view/animation/Animation;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01001e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->D:Landroid/view/animation/Animation;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/n;->m()Landroidx/fragment/app/w;

    move-result-object v0

    .line 9
    new-instance v1, Lj8/k0;

    invoke-direct {v1}, Lj8/k0;-><init>()V

    const v2, 0x7f0a0120

    .line 10
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/w;->m(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/w;->f()I

    return-void
.end method

.method private synthetic Y0()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/story/StoryActivity;->H:Z

    if-nez v0, :cond_d

    .line 2
    iget v0, p0, Lcom/tebakgambar/story/StoryActivity;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tebakgambar/story/StoryActivity;->y:I

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/story/StoryActivity;->b1()V

    :cond_d
    return-void
.end method

.method private synthetic Z0(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/tebakgambar/story/StoryActivity;->H:Z

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/story/StoryActivity;->a1()V

    return-void
.end method

.method private a1()V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->b()Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b1()V
    .registers 7

    .line 1
    iget v0, p0, Lcom/tebakgambar/story/StoryActivity;->y:I

    const/4 v1, 0x5

    const/16 v2, 0x8

    if-ge v0, v2, :cond_1f

    if-lt v0, v1, :cond_16

    const/4 v3, 0x6

    if-gt v0, v3, :cond_16

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->F:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tebakgambar/story/StoryActivity;->G:Ljava/lang/Runnable;

    const-wide/16 v4, 0xdac

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1f

    .line 3
    :cond_16
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->F:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tebakgambar/story/StoryActivity;->G:Ljava/lang/Runnable;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    :cond_1f
    :goto_1f
    iget v0, p0, Lcom/tebakgambar/story/StoryActivity;->y:I

    packed-switch v0, :pswitch_data_13a

    goto/16 :goto_98

    .line 5
    :pswitch_26
    invoke-direct {p0}, Lcom/tebakgambar/story/StoryActivity;->a1()V

    return-void

    .line 6
    :pswitch_2a
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->z:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12012a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_98

    .line 7
    :pswitch_3b
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->A:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1200fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_98

    .line 8
    :pswitch_4c
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->B:Lcom/tebakgambar/component/CustomImageView;

    const v3, 0x7f080109

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_98

    .line 9
    :pswitch_55
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->A:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1200fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_98

    .line 10
    :pswitch_66
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->z:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120129

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_98

    .line 11
    :pswitch_77
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->A:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120128

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_98

    .line 12
    :pswitch_88
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->z:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120127

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_98
    iget v0, p0, Lcom/tebakgambar/story/StoryActivity;->y:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_c2

    .line 14
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->B:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->z:Lcom/tebakgambar/component/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->A:Lcom/tebakgambar/component/CustomTextView;

    iget-object v2, p0, Lcom/tebakgambar/story/StoryActivity;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 17
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->B:Lcom/tebakgambar/component/CustomImageView;

    iget-object v2, p0, Lcom/tebakgambar/story/StoryActivity;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 18
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->A:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->z:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_138

    .line 20
    :cond_c2
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->B:Lcom/tebakgambar/component/CustomImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 21
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->z:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_ee

    .line 22
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->A:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->z:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->B:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->z:Lcom/tebakgambar/component/CustomTextView;

    iget-object v4, p0, Lcom/tebakgambar/story/StoryActivity;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 26
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->A:Lcom/tebakgambar/component/CustomTextView;

    iget-object v4, p0, Lcom/tebakgambar/story/StoryActivity;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_106

    .line 27
    :cond_ee
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->z:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->A:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->A:Lcom/tebakgambar/component/CustomTextView;

    iget-object v4, p0, Lcom/tebakgambar/story/StoryActivity;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->z:Lcom/tebakgambar/component/CustomTextView;

    iget-object v4, p0, Lcom/tebakgambar/story/StoryActivity;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    :goto_106
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->B:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_124

    .line 32
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->B:Lcom/tebakgambar/component/CustomImageView;

    iget-object v4, p0, Lcom/tebakgambar/story/StoryActivity;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 33
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->B:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->z:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->B:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    :cond_124
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->B:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_138

    .line 37
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->B:Lcom/tebakgambar/component/CustomImageView;

    iget-object v1, p0, Lcom/tebakgambar/story/StoryActivity;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 38
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity;->B:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_138
    :goto_138
    return-void

    nop

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_88
        :pswitch_77
        :pswitch_66
        :pswitch_55
        :pswitch_4c
        :pswitch_3b
        :pswitch_2a
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002f

    .line 2
    invoke-virtual {p0, p1}, Lj8/t;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/story/StoryActivity;->X0()V

    .line 4
    invoke-direct {p0}, Lcom/tebakgambar/story/StoryActivity;->W0()V

    .line 5
    invoke-direct {p0}, Lcom/tebakgambar/story/StoryActivity;->b1()V

    .line 6
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm8/a;->D(Z)V

    return-void
.end method

###### Class x8.a (x8.a)
.class public final synthetic Lx8/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/story/StoryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/story/StoryActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx8/a;->o:Lcom/tebakgambar/story/StoryActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lx8/a;->o:Lcom/tebakgambar/story/StoryActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/story/StoryActivity;->V0(Lcom/tebakgambar/story/StoryActivity;Landroid/view/View;)V

    return-void
.end method

###### Class x8.b (x8.b)
.class public final synthetic Lx8/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/story/StoryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/story/StoryActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx8/b;->o:Lcom/tebakgambar/story/StoryActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lx8/b;->o:Lcom/tebakgambar/story/StoryActivity;

    invoke-static {v0}, Lcom/tebakgambar/story/StoryActivity;->U0(Lcom/tebakgambar/story/StoryActivity;)V

    return-void
.end method
