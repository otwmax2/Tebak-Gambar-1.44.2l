###### Class h9.f (h9.f)
.class public final Lh9/f;
.super Ljava/lang/Object;
.source "KotlinVersion.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh9/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lh9/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final s:Lh9/f$a;

.field public static final t:Lh9/f;


# instance fields
.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh9/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh9/f$a;-><init>(Lt9/g;)V

    sput-object v0, Lh9/f;->s:Lh9/f$a;

    .line 1
    invoke-static {}, Lh9/g;->a()Lh9/f;

    move-result-object v0

    sput-object v0, Lh9/f;->t:Lh9/f;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lh9/f;->o:I

    iput p2, p0, Lh9/f;->p:I

    iput p3, p0, Lh9/f;->q:I

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lh9/f;->e(III)I

    move-result p1

    iput p1, p0, Lh9/f;->r:I

    return-void
.end method

.method private final e(III)I
    .registers 7

    .line 1
    new-instance v0, Ly9/f;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-direct {v0, v1, v2}, Ly9/f;-><init>(II)V

    invoke-virtual {v0, p1}, Ly9/f;->l(I)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ly9/f;

    invoke-direct {v0, v1, v2}, Ly9/f;-><init>(II)V

    invoke-virtual {v0, p2}, Ly9/f;->l(I)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ly9/f;

    invoke-direct {v0, v1, v2}, Ly9/f;-><init>(II)V

    invoke-virtual {v0, p3}, Ly9/f;->l(I)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    :cond_25
    if-eqz v1, :cond_2e

    shl-int/lit8 p1, p1, 0x10

    shl-int/lit8 p2, p2, 0x8

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    return p1

    .line 2
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version components are out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public c(Lh9/f;)I
    .registers 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lh9/f;->r:I

    iget p1, p1, Lh9/f;->r:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lh9/f;

    invoke-virtual {p0, p1}, Lh9/f;->c(Lh9/f;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lh9/f;

    if-eqz v1, :cond_b

    check-cast p1, Lh9/f;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    const/4 v1, 0x0

    if-nez p1, :cond_10

    return v1

    .line 2
    :cond_10
    iget v2, p0, Lh9/f;->r:I

    iget p1, p1, Lh9/f;->r:I

    if-ne v2, p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lh9/f;->r:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lh9/f;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lh9/f;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lh9/f;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class h9.f.a (h9.f$a)
.class public final Lh9/f$a;
.super Ljava/lang/Object;
.source "KotlinVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh9/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lh9/f$a;-><init>()V

    return-void
.end method
