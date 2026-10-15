###### Class y9.c (y9.c)
.class public final Ly9/c;
.super Ly9/a;
.source "Ranges.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly9/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly9/a;"
    }
.end annotation


# static fields
.field public static final s:Ly9/c$a;

.field private static final t:Ly9/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ly9/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly9/c$a;-><init>(Lt9/g;)V

    sput-object v0, Ly9/c;->s:Ly9/c$a;

    .line 1
    new-instance v0, Ly9/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly9/c;-><init>(CC)V

    sput-object v0, Ly9/c;->t:Ly9/c;

    return-void
.end method

.method public constructor <init>(CC)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Ly9/a;-><init>(CCI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Ly9/c;

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Ly9/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Ly9/c;

    invoke-virtual {v0}, Ly9/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 2
    :cond_13
    invoke-virtual {p0}, Ly9/a;->c()C

    move-result v0

    check-cast p1, Ly9/c;

    invoke-virtual {p1}, Ly9/a;->c()C

    move-result v1

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Ly9/a;->g()C

    move-result v0

    invoke-virtual {p1}, Ly9/a;->g()C

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
    invoke-virtual {p0}, Ly9/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_13

    :cond_8
    invoke-virtual {p0}, Ly9/a;->c()C

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ly9/a;->g()C

    move-result v1

    add-int/2addr v0, v1

    :goto_13
    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ly9/a;->c()C

    move-result v0

    invoke-virtual {p0}, Ly9/a;->g()C

    move-result v1

    invoke-static {v0, v1}, Lt9/m;->f(II)I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ly9/a;->c()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ly9/a;->g()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class y9.c.a (y9.c$a)
.class public final Ly9/c$a;
.super Ljava/lang/Object;
.source "Ranges.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly9/c;
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

    invoke-direct {p0}, Ly9/c$a;-><init>()V

    return-void
.end method
