###### Class com.tebakgambar.component.TGHeaderFragment (com.tebakgambar.component.TGHeaderFragment)
.class public Lcom/tebakgambar/component/TGHeaderFragment;
.super Landroidx/fragment/app/Fragment;
.source "TGHeaderFragment.java"

# interfaces
.implements Lcom/tebakgambar/component/b$c;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private o:Lo8/c0;

.field private p:Lm8/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/component/TGHeaderFragment;->p:Lm8/a;

    return-void
.end method

.method private o()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2
    new-instance v1, Lcom/tebakgambar/component/a;

    invoke-direct {v1, v0}, Lcom/tebakgambar/component/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_e
    return-void
.end method

.method private p(J)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/component/TGHeaderFragment;->p:Lm8/a;

    invoke-virtual {v0}, Lm8/a;->g()I

    move-result v2

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/component/TGHeaderFragment;->p:Lm8/a;

    invoke-virtual {v0}, Lm8/a;->j()J

    move-result-wide v5

    move-object v1, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/tebakgambar/component/TGHeaderFragment;->q(IJJ)V

    return-void
.end method

.method private q(IJJ)V
    .registers 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x5

    const v3, 0x7f080065

    if-eq p1, v1, :cond_29

    if-eq p1, v0, :cond_25

    const/4 v4, 0x3

    if-eq p1, v4, :cond_21

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1d

    if-eq p1, v2, :cond_16

    const v4, 0x7f0800f4

    goto :goto_2c

    :cond_16
    const v4, 0x7f0800f9

    const v3, 0x7f080064

    goto :goto_2c

    :cond_1d
    const v4, 0x7f0800f8

    goto :goto_2c

    :cond_21
    const v4, 0x7f0800f7

    goto :goto_2c

    :cond_25
    const v4, 0x7f0800f6

    goto :goto_2c

    :cond_29
    const v4, 0x7f0800f5

    .line 1
    :goto_2c
    iget-object v5, p0, Lcom/tebakgambar/component/TGHeaderFragment;->o:Lo8/c0;

    iget-object v5, v5, Lo8/c0;->P:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v4, p0, Lcom/tebakgambar/component/TGHeaderFragment;->o:Lo8/c0;

    iget-object v4, v4, Lo8/c0;->O:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v3, p0, Lcom/tebakgambar/component/TGHeaderFragment;->o:Lo8/c0;

    iget-object v3, v3, Lo8/c0;->R:Lcom/tebakgambar/component/CustomTextView;

    const/4 v4, 0x0

    if-ne p1, v2, :cond_44

    const/16 v5, 0x8

    goto :goto_45

    :cond_44
    const/4 v5, 0x0

    :goto_45
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eq p1, v2, :cond_75

    .line 4
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {p1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sub-long/2addr p4, p2

    const-wide/16 p2, 0x3e8

    .line 5
    div-long/2addr p4, p2

    const-wide/16 p2, 0x3c

    .line 6
    div-long v2, p4, p2

    .line 7
    rem-long/2addr p4, p2

    .line 8
    iget-object p2, p0, Lcom/tebakgambar/component/TGHeaderFragment;->o:Lo8/c0;

    iget-object p2, p2, Lo8/c0;->R:Lcom/tebakgambar/component/CustomTextView;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v4

    invoke-virtual {p1, p4, p5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    const-string p1, "%s:%s "

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_75
    return-void
.end method


# virtual methods
.method public e(J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/component/TGHeaderFragment;->p(J)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/tebakgambar/component/b;->f()Lcom/tebakgambar/component/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/b;->e(Lcom/tebakgambar/component/b$c;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/component/TGHeaderFragment;->p:Lm8/a;

    invoke-virtual {p1}, Lm8/a;->g()I

    move-result p1

    .line 2
    sget v0, Lm8/a;->z:I

    if-ge p1, v0, :cond_d

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/component/TGHeaderFragment;->o()V

    :cond_d
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d004d

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/g;->h(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/c0;

    iput-object p1, p0, Lcom/tebakgambar/component/TGHeaderFragment;->o:Lo8/c0;

    .line 2
    iget-object p1, p1, Lo8/c0;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/component/TGHeaderFragment;->o:Lo8/c0;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/tebakgambar/component/b;->f()Lcom/tebakgambar/component/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/b;->g(Lcom/tebakgambar/component/b$c;)V

    return-void
.end method
