###### Class d0.d (d0.d)
.class public Ld0/d;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/d$d;,
        Ld0/d$c;,
        Ld0/d$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/widget/TextView;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-nez p1, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    if-nez p0, :cond_12

    return v0

    .line 1
    :cond_12
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_1d

    return v1

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_2e

    .line 3
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2b

    return v1

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_2e
    return v0
.end method

.method public static c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq p1, v0, :cond_24

    if-nez p1, :cond_f

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_24

    .line 3
    :cond_f
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_1a

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    .line 5
    :cond_1a
    invoke-static {p1, v0}, Ld0/d;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    .line 6
    :cond_21
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public static d(Landroid/widget/TextView;Ld0/d$c;Ld0/d$d;Ld0/d$b;Landroidx/databinding/h;)V
    .registers 6

    if-nez p1, :cond_a

    if-nez p3, :cond_a

    if-nez p2, :cond_a

    if-nez p4, :cond_a

    const/4 p1, 0x0

    goto :goto_10

    .line 1
    :cond_a
    new-instance v0, Ld0/d$a;

    invoke-direct {v0, p1, p2, p4, p3}, Ld0/d$a;-><init>(Ld0/d$c;Ld0/d$d;Landroidx/databinding/h;Ld0/d$b;)V

    move-object p1, v0

    .line 2
    :goto_10
    sget p2, Lf0/a;->a:I

    invoke-static {p0, p1, p2}, Ld0/c;->a(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/TextWatcher;

    if-eqz p2, :cond_1d

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1d
    if-eqz p1, :cond_22

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_22
    return-void
.end method

###### Class d0.d.a (d0.d$a)
.class Ld0/d$a;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/d;->d(Landroid/widget/TextView;Ld0/d$c;Ld0/d$d;Ld0/d$b;Landroidx/databinding/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ld0/d$c;

.field final synthetic p:Ld0/d$d;

.field final synthetic q:Landroidx/databinding/h;

.field final synthetic r:Ld0/d$b;


# direct methods
.method constructor <init>(Ld0/d$c;Ld0/d$d;Landroidx/databinding/h;Ld0/d$b;)V
    .registers 5

    .line 1
    iput-object p1, p0, Ld0/d$a;->o:Ld0/d$c;

    iput-object p2, p0, Ld0/d$a;->p:Ld0/d$d;

    iput-object p3, p0, Ld0/d$a;->q:Landroidx/databinding/h;

    iput-object p4, p0, Ld0/d$a;->r:Ld0/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ld0/d$a;->r:Ld0/d$b;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Ld0/d$b;->afterTextChanged(Landroid/text/Editable;)V

    :cond_7
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 1
    iget-object v0, p0, Ld0/d$a;->o:Ld0/d$c;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Ld0/d$c;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_7
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 1
    iget-object v0, p0, Ld0/d$a;->p:Ld0/d$d;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Ld0/d$d;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 3
    :cond_7
    iget-object p1, p0, Ld0/d$a;->q:Landroidx/databinding/h;

    if-eqz p1, :cond_e

    .line 4
    invoke-interface {p1}, Landroidx/databinding/h;->a()V

    :cond_e
    return-void
.end method

###### Class d0.d.b (d0.d$b)
.class public interface abstract Ld0/d$b;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract afterTextChanged(Landroid/text/Editable;)V
.end method

###### Class d0.d.c (d0.d$c)
.class public interface abstract Ld0/d$c;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract beforeTextChanged(Ljava/lang/CharSequence;III)V
.end method

###### Class d0.d.InterfaceC0141d (d0.d$d)
.class public interface abstract Ld0/d$d;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract onTextChanged(Ljava/lang/CharSequence;III)V
.end method
