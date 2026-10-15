###### Class androidx.emoji2.text.o (androidx.emoji2.text.o)
.class Landroidx/emoji2/text/o;
.super Ljava/lang/Object;
.source "UnprecomputeTextOnModificationSpannable.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/o$c;,
        Landroidx/emoji2/text/o$b;,
        Landroidx/emoji2/text/o$a;
    }
.end annotation


# instance fields
.field private o:Z

.field private p:Landroid/text/Spannable;


# direct methods
.method constructor <init>(Landroid/text/Spannable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/emoji2/text/o;->o:Z

    .line 3
    iput-object p1, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/emoji2/text/o;->o:Z

    .line 6
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    return-void
.end method

.method private a()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    .line 2
    iget-boolean v1, p0, Landroidx/emoji2/text/o;->o:Z

    if-nez v1, :cond_17

    invoke-static {}, Landroidx/emoji2/text/o;->c()Landroidx/emoji2/text/o$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/o$b;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    :cond_17
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/emoji2/text/o;->o:Z

    return-void
.end method

.method static c()Landroidx/emoji2/text/o$b;
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_c

    .line 2
    new-instance v0, Landroidx/emoji2/text/o$b;

    invoke-direct {v0}, Landroidx/emoji2/text/o$b;-><init>()V

    goto :goto_11

    :cond_c
    new-instance v0, Landroidx/emoji2/text/o$c;

    invoke-direct {v0}, Landroidx/emoji2/text/o$c;-><init>()V

    :goto_11
    return-object v0
.end method


# virtual methods
.method b()Landroid/text/Spannable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    return-object v0
.end method

.method public charAt(I)C
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result p1

    return p1
.end method

.method public chars()Ljava/util/stream/IntStream;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    invoke-static {v0}, Landroidx/emoji2/text/o$a;->a(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public codePoints()Ljava/util/stream/IntStream;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    invoke-static {v0}, Landroidx/emoji2/text/o$a;->b(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/o;->a()V

    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/o;->a()V

    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/o;->p:Landroid/text/Spannable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.emoji2.text.o.a (androidx.emoji2.text.o$a)
.class Landroidx/emoji2/text/o$a;
.super Ljava/lang/Object;
.source "UnprecomputeTextOnModificationSpannable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method static a(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;
    .registers 1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->chars()Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;
    .registers 1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->codePoints()Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.emoji2.text.o.b (androidx.emoji2.text.o$b)
.class Landroidx/emoji2/text/o$b;
.super Ljava/lang/Object;
.source "UnprecomputeTextOnModificationSpannable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Landroidx/core/text/c;

    return p1
.end method

###### Class androidx.emoji2.text.o.c (androidx.emoji2.text.o$c)
.class Landroidx/emoji2/text/o$c;
.super Landroidx/emoji2/text/o$b;
.source "UnprecomputeTextOnModificationSpannable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/o$b;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Landroid/text/PrecomputedText;

    if-nez v0, :cond_b

    instance-of p1, p1, Landroidx/core/text/c;

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method
