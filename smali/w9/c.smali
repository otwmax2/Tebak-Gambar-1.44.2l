###### Class w9.c (w9.c)
.class public abstract Lw9/c;
.super Ljava/lang/Object;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw9/c$a;
    }
.end annotation


# static fields
.field public static final o:Lw9/c$a;

.field private static final p:Lw9/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lw9/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw9/c$a;-><init>(Lt9/g;)V

    sput-object v0, Lw9/c;->o:Lw9/c$a;

    .line 1
    sget-object v0, Ln9/b;->a:Ln9/a;

    invoke-virtual {v0}, Ln9/a;->b()Lw9/c;

    move-result-object v0

    sput-object v0, Lw9/c;->p:Lw9/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lw9/c;
    .registers 1

    .line 1
    sget-object v0, Lw9/c;->p:Lw9/c;

    return-object v0
.end method


# virtual methods
.method public abstract b(I)I
.end method

.method public abstract c()I
.end method

.method public abstract d(I)I
.end method

.method public e(II)I
    .registers 7

    .line 1
    invoke-static {p1, p2}, Lw9/d;->b(II)V

    sub-int v0, p2, p1

    const/4 v1, 0x1

    if-gtz v0, :cond_1a

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_d

    goto :goto_1a

    .line 2
    :cond_d
    invoke-virtual {p0}, Lw9/c;->c()I

    move-result v0

    const/4 v2, 0x0

    if-gt p1, v0, :cond_17

    if-ge v0, p2, :cond_17

    const/4 v2, 0x1

    :cond_17
    if-eqz v2, :cond_d

    return v0

    :cond_1a
    :goto_1a
    neg-int p2, v0

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_27

    .line 3
    invoke-static {v0}, Lw9/d;->c(I)I

    move-result p2

    .line 4
    invoke-virtual {p0, p2}, Lw9/c;->b(I)I

    move-result p2

    goto :goto_35

    .line 5
    :cond_27
    invoke-virtual {p0}, Lw9/c;->c()I

    move-result p2

    ushr-int/2addr p2, v1

    .line 6
    rem-int v2, p2, v0

    sub-int/2addr p2, v2

    add-int/lit8 v3, v0, -0x1

    add-int/2addr p2, v3

    if-ltz p2, :cond_27

    move p2, v2

    :goto_35
    add-int/2addr p1, p2

    return p1
.end method

###### Class w9.c.a (w9.c$a)
.class public final Lw9/c$a;
.super Lw9/c;
.source "Random.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw9/c$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lw9/c;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lw9/c$a;-><init>()V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Lw9/c$a$a;->o:Lw9/c$a$a;

    return-object v0
.end method


# virtual methods
.method public b(I)I
    .registers 3

    .line 1
    invoke-static {}, Lw9/c;->a()Lw9/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw9/c;->b(I)I

    move-result p1

    return p1
.end method

.method public c()I
    .registers 2

    .line 1
    invoke-static {}, Lw9/c;->a()Lw9/c;

    move-result-object v0

    invoke-virtual {v0}, Lw9/c;->c()I

    move-result v0

    return v0
.end method

.method public d(I)I
    .registers 3

    .line 1
    invoke-static {}, Lw9/c;->a()Lw9/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw9/c;->d(I)I

    move-result p1

    return p1
.end method

.method public e(II)I
    .registers 4

    .line 1
    invoke-static {}, Lw9/c;->a()Lw9/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lw9/c;->e(II)I

    move-result p1

    return p1
.end method

###### Class w9.c.a.C0287a (w9.c$a$a)
.class final Lw9/c$a$a;
.super Ljava/lang/Object;
.source "Random.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw9/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final o:Lw9/c$a$a;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lw9/c$a$a;

    invoke-direct {v0}, Lw9/c$a$a;-><init>()V

    sput-object v0, Lw9/c$a$a;->o:Lw9/c$a$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Lw9/c;->o:Lw9/c$a;

    return-object v0
.end method
