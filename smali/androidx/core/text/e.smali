###### Class androidx.core.text.e (androidx.core.text.e)
.class public final Landroidx/core/text/e;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/e$f;,
        Landroidx/core/text/e$a;,
        Landroidx/core/text/e$b;,
        Landroidx/core/text/e$c;,
        Landroidx/core/text/e$e;,
        Landroidx/core/text/e$d;
    }
.end annotation


# static fields
.field public static final a:Landroidx/core/text/d;

.field public static final b:Landroidx/core/text/d;

.field public static final c:Landroidx/core/text/d;

.field public static final d:Landroidx/core/text/d;

.field public static final e:Landroidx/core/text/d;

.field public static final f:Landroidx/core/text/d;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Landroidx/core/text/e$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/core/text/e$e;-><init>(Landroidx/core/text/e$c;Z)V

    sput-object v0, Landroidx/core/text/e;->a:Landroidx/core/text/d;

    .line 2
    new-instance v0, Landroidx/core/text/e$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/core/text/e$e;-><init>(Landroidx/core/text/e$c;Z)V

    sput-object v0, Landroidx/core/text/e;->b:Landroidx/core/text/d;

    .line 3
    new-instance v0, Landroidx/core/text/e$e;

    sget-object v1, Landroidx/core/text/e$b;->a:Landroidx/core/text/e$b;

    invoke-direct {v0, v1, v2}, Landroidx/core/text/e$e;-><init>(Landroidx/core/text/e$c;Z)V

    sput-object v0, Landroidx/core/text/e;->c:Landroidx/core/text/d;

    .line 4
    new-instance v0, Landroidx/core/text/e$e;

    invoke-direct {v0, v1, v3}, Landroidx/core/text/e$e;-><init>(Landroidx/core/text/e$c;Z)V

    sput-object v0, Landroidx/core/text/e;->d:Landroidx/core/text/d;

    .line 5
    new-instance v0, Landroidx/core/text/e$e;

    sget-object v1, Landroidx/core/text/e$a;->b:Landroidx/core/text/e$a;

    invoke-direct {v0, v1, v2}, Landroidx/core/text/e$e;-><init>(Landroidx/core/text/e$c;Z)V

    sput-object v0, Landroidx/core/text/e;->e:Landroidx/core/text/d;

    .line 6
    sget-object v0, Landroidx/core/text/e$f;->b:Landroidx/core/text/e$f;

    sput-object v0, Landroidx/core/text/e;->f:Landroidx/core/text/d;

    return-void
.end method

.method static a(I)I
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_b

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    return v0
.end method

.method static b(I)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    if-eq p0, v0, :cond_c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    packed-switch p0, :pswitch_data_10

    return v1

    :cond_c
    :pswitch_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :pswitch_e
    return v0

    nop

    :pswitch_data_10
    .packed-switch 0xe
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

###### Class androidx.core.text.e.a (androidx.core.text.e$a)
.class Landroidx/core/text/e$a;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Landroidx/core/text/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final b:Landroidx/core/text/e$a;


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/core/text/e$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/core/text/e$a;-><init>(Z)V

    sput-object v0, Landroidx/core/text/e$a;->b:Landroidx/core/text/e$a;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroidx/core/text/e$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)I
    .registers 8

    add-int/2addr p3, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge p2, p3, :cond_25

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v2

    invoke-static {v2}, Landroidx/core/text/e;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    if-eq v2, v3, :cond_17

    goto :goto_22

    .line 2
    :cond_17
    iget-boolean v1, p0, Landroidx/core/text/e$a;->a:Z

    if-nez v1, :cond_21

    return v3

    .line 3
    :cond_1c
    iget-boolean v1, p0, Landroidx/core/text/e$a;->a:Z

    if-eqz v1, :cond_21

    return v0

    :cond_21
    const/4 v1, 0x1

    :goto_22
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_25
    if-eqz v1, :cond_2a

    .line 4
    iget-boolean p1, p0, Landroidx/core/text/e$a;->a:Z

    return p1

    :cond_2a
    const/4 p1, 0x2

    return p1
.end method

###### Class androidx.core.text.e.b (androidx.core.text.e$b)
.class Landroidx/core/text/e$b;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Landroidx/core/text/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Landroidx/core/text/e$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/core/text/e$b;

    invoke-direct {v0}, Landroidx/core/text/e$b;-><init>()V

    sput-object v0, Landroidx/core/text/e$b;->a:Landroidx/core/text/e$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)I
    .registers 6

    add-int/2addr p3, p2

    const/4 v0, 0x2

    const/4 v1, 0x2

    :goto_3
    if-ge p2, p3, :cond_16

    if-ne v1, v0, :cond_16

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    invoke-static {v1}, Landroidx/core/text/e;->b(I)I

    move-result v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_16
    return v1
.end method

###### Class androidx.core.text.e.c (androidx.core.text.e$c)
.class interface abstract Landroidx/core/text/e$c;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/CharSequence;II)I
.end method

###### Class androidx.core.text.e.d (androidx.core.text.e$d)
.class abstract Landroidx/core/text/e$d;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Landroidx/core/text/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation


# instance fields
.field private final a:Landroidx/core/text/e$c;


# direct methods
.method constructor <init>(Landroidx/core/text/e$c;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/text/e$d;->a:Landroidx/core/text/e$c;

    return-void
.end method

.method private c(Ljava/lang/CharSequence;II)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/text/e$d;->a:Landroidx/core/text/e$c;

    invoke-interface {v0, p1, p2, p3}, Landroidx/core/text/e$c;->a(Ljava/lang/CharSequence;II)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_12

    if-eq p1, p2, :cond_10

    .line 2
    invoke-virtual {p0}, Landroidx/core/text/e$d;->b()Z

    move-result p1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1

    :cond_12
    return p2
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)Z
    .registers 5

    if-eqz p1, :cond_1b

    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1b

    .line 2
    iget-object v0, p0, Landroidx/core/text/e$d;->a:Landroidx/core/text/e$c;

    if-nez v0, :cond_16

    .line 3
    invoke-virtual {p0}, Landroidx/core/text/e$d;->b()Z

    move-result p1

    return p1

    .line 4
    :cond_16
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/text/e$d;->c(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1

    .line 5
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method protected abstract b()Z
.end method

###### Class androidx.core.text.e.C0037e (androidx.core.text.e$e)
.class Landroidx/core/text/e$e;
.super Landroidx/core/text/e$d;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final b:Z


# direct methods
.method constructor <init>(Landroidx/core/text/e$c;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/text/e$d;-><init>(Landroidx/core/text/e$c;)V

    .line 2
    iput-boolean p2, p0, Landroidx/core/text/e$e;->b:Z

    return-void
.end method


# virtual methods
.method protected b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/text/e$e;->b:Z

    return v0
.end method

###### Class androidx.core.text.e.f (androidx.core.text.e$f)
.class Landroidx/core/text/e$f;
.super Landroidx/core/text/e$d;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field static final b:Landroidx/core/text/e$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/core/text/e$f;

    invoke-direct {v0}, Landroidx/core/text/e$f;-><init>()V

    sput-object v0, Landroidx/core/text/e$f;->b:Landroidx/core/text/e$f;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/core/text/e$d;-><init>(Landroidx/core/text/e$c;)V

    return-void
.end method


# virtual methods
.method protected b()Z
    .registers 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/f;->b(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method
