###### Class j8.z (j8.z)
.class public Lj8/z;
.super Landroid/app/Dialog;
.source "CustomDialogClueKamu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj8/z$c;
    }
.end annotation


# instance fields
.field o:Landroid/content/Context;

.field p:Lj8/z$c;

.field q:Lcom/tebakgambar/component/CustomButton;

.field r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/component/CustomTextView;",
            ">;"
        }
    .end annotation
.end field

.field t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lj8/z;->r:Ljava/util/ArrayList;

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lj8/z;->s:Ljava/util/ArrayList;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lj8/z;->t:Ljava/util/ArrayList;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const p2, 0x7f0d0052

    .line 6
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 7
    iput-object p1, p0, Lj8/z;->o:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lj8/z;->t:Ljava/util/ArrayList;

    .line 9
    new-instance p1, Lj8/z$a;

    invoke-direct {p1, p0}, Lj8/z$a;-><init>(Lj8/z;)V

    iput-object p1, p0, Lj8/z;->r:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Lj8/z$b;

    invoke-direct {p1, p0}, Lj8/z$b;-><init>(Lj8/z;)V

    iput-object p1, p0, Lj8/z;->s:Ljava/util/ArrayList;

    const p1, 0x7f0a02b5

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/component/CustomButton;

    iput-object p1, p0, Lj8/z;->q:Lcom/tebakgambar/component/CustomButton;

    .line 12
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_45
    if-ge v0, p1, :cond_94

    .line 13
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 14
    iget-object v1, p0, Lj8/z;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f08015a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 15
    iget-object v1, p0, Lj8/z;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tebakgambar/component/CustomTextView;

    const-string v2, "#03877A"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object v1, p0, Lj8/z;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_91

    .line 17
    :cond_86
    iget-object v1, p0, Lj8/z;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_91
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 18
    :cond_94
    iget-object p1, p0, Lj8/z;->q:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public a(Lj8/z$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/z;->p:Lj8/z$c;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02b5

    if-eq p1, v0, :cond_2c

    packed-switch p1, :pswitch_data_30

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2f

    .line 3
    :pswitch_10
    iget-object p1, p0, Lj8/z;->p:Lj8/z$c;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lj8/z$c;->a(I)V

    goto :goto_2f

    .line 4
    :pswitch_17
    iget-object p1, p0, Lj8/z;->p:Lj8/z$c;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lj8/z$c;->a(I)V

    goto :goto_2f

    .line 5
    :pswitch_1e
    iget-object p1, p0, Lj8/z;->p:Lj8/z$c;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lj8/z$c;->a(I)V

    goto :goto_2f

    .line 6
    :pswitch_25
    iget-object p1, p0, Lj8/z;->p:Lj8/z$c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lj8/z$c;->a(I)V

    goto :goto_2f

    .line 7
    :cond_2c
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x7f0a018a
        :pswitch_25
        :pswitch_1e
        :pswitch_17
        :pswitch_10
    .end packed-switch
.end method

###### Class j8.z.a (j8.z$a)
.class Lj8/z$a;
.super Ljava/util/ArrayList;
.source "CustomDialogClueKamu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/z;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/widget/RelativeLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lj8/z;


# direct methods
.method constructor <init>(Lj8/z;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lj8/z$a;->o:Lj8/z;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f0a018a

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a018b

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a018c

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a018d

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class j8.z.b (j8.z$b)
.class Lj8/z$b;
.super Ljava/util/ArrayList;
.source "CustomDialogClueKamu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/z;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/tebakgambar/component/CustomTextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lj8/z;


# direct methods
.method constructor <init>(Lj8/z;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lj8/z$b;->o:Lj8/z;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f0a02af

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a02b0

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a02b1

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a02b2

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class j8.z.c (j8.z$c)
.class public interface abstract Lj8/z$c;
.super Ljava/lang/Object;
.source "CustomDialogClueKamu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(I)V
.end method
