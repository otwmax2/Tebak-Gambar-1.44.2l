###### Class y9.f (y9.f)
.class public final Ly9/f;
.super Ly9/d;
.source "Ranges.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly9/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly9/d;"
    }
.end annotation


# static fields
.field public static final s:Ly9/f$a;

.field private static final t:Ly9/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ly9/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly9/f$a;-><init>(Lt9/g;)V

    sput-object v0, Ly9/f;->s:Ly9/f$a;

    .line 1
    new-instance v0, Ly9/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly9/f;-><init>(II)V

    sput-object v0, Ly9/f;->t:Ly9/f;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Ly9/d;-><init>(III)V

    return-void
.end method

.method public static final synthetic k()Ly9/f;
    .registers 1

    .line 1
    sget-object v0, Ly9/f;->t:Ly9/f;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Ly9/f;

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Ly9/f;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Ly9/f;

    invoke-virtual {v0}, Ly9/f;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 2
    :cond_13
    invoke-virtual {p0}, Ly9/d;->c()I

    move-result v0

    check-cast p1, Ly9/f;

    invoke-virtual {p1}, Ly9/d;->c()I

    move-result v1

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Ly9/d;->g()I

    move-result v0

    invoke-virtual {p1}, Ly9/d;->g()I

    move-result p1

    if-ne v0, p1, :cond_2b

    :cond_29
    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Ly9/f;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_13

    :cond_8
    invoke-virtual {p0}, Ly9/d;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ly9/d;->g()I

    move-result v1

    add-int/2addr v0, v1

    :goto_13
    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ly9/d;->c()I

    move-result v0

    invoke-virtual {p0}, Ly9/d;->g()I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public l(I)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ly9/d;->c()I

    move-result v0

    if-gt v0, p1, :cond_e

    invoke-virtual {p0}, Ly9/d;->g()I

    move-result v0

    if-gt p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public m()Ljava/lang/Integer;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ly9/d;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/Integer;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ly9/d;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ly9/d;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ly9/d;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class y9.f.a (y9.f$a)
.class public final Ly9/f$a;
.super Ljava/lang/Object;
.source "Ranges.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly9/f;
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

    invoke-direct {p0}, Ly9/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ly9/f;
    .registers 2

    .line 1
    invoke-static {}, Ly9/f;->k()Ly9/f;

    move-result-object v0

    return-object v0
.end method
