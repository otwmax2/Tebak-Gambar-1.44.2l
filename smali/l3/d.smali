###### Class l3.d (l3.d)
.class final Ll3/d;
.super Ll3/p;
.source "AutoValue_TransportContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/d$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private final c:Lj3/d;


# direct methods
.method private constructor <init>(Ljava/lang/String;[BLj3/d;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ll3/p;-><init>()V

    .line 3
    iput-object p1, p0, Ll3/d;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Ll3/d;->b:[B

    .line 5
    iput-object p3, p0, Ll3/d;->c:Lj3/d;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[BLj3/d;Ll3/d$a;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ll3/d;-><init>(Ljava/lang/String;[BLj3/d;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ll3/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()[B
    .registers 2

    .line 1
    iget-object v0, p0, Ll3/d;->b:[B

    return-object v0
.end method

.method public d()Lj3/d;
    .registers 2

    .line 1
    iget-object v0, p0, Ll3/d;->c:Lj3/d;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ll3/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 2
    check-cast p1, Ll3/p;

    .line 3
    iget-object v1, p0, Ll3/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ll3/p;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Ll3/d;->b:[B

    .line 4
    instance-of v3, p1, Ll3/d;

    if-eqz v3, :cond_23

    move-object v3, p1

    check-cast v3, Ll3/d;

    iget-object v3, v3, Ll3/d;->b:[B

    goto :goto_27

    :cond_23
    invoke-virtual {p1}, Ll3/p;->c()[B

    move-result-object v3

    :goto_27
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Ll3/d;->c:Lj3/d;

    .line 5
    invoke-virtual {p1}, Ll3/p;->d()Lj3/d;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    return v0

    :cond_3c
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Ll3/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Ll3/d;->b:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v1, p0, Ll3/d;->c:Lj3/d;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

###### Class l3.d.a (l3.d$a)
.class synthetic Ll3/d$a;
.super Ljava/lang/Object;
.source "AutoValue_TransportContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class l3.d.b (l3.d$b)
.class final Ll3/d$b;
.super Ll3/p$a;
.source "AutoValue_TransportContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:Lj3/d;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ll3/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ll3/p;
    .registers 6

    .line 1
    iget-object v0, p0, Ll3/d$b;->a:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_17

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " backendName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_17
    iget-object v0, p0, Ll3/d$b;->c:Lj3/d;

    if-nez v0, :cond_2c

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " priority"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 6
    new-instance v0, Ll3/d;

    iget-object v1, p0, Ll3/d$b;->a:Ljava/lang/String;

    iget-object v2, p0, Ll3/d$b;->b:[B

    iget-object v3, p0, Ll3/d$b;->c:Lj3/d;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ll3/d;-><init>(Ljava/lang/String;[BLj3/d;Ll3/d$a;)V

    return-object v0

    .line 7
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Ll3/p$a;
    .registers 3

    const-string v0, "Null backendName"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ll3/d$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c([B)Ll3/p$a;
    .registers 2

    .line 1
    iput-object p1, p0, Ll3/d$b;->b:[B

    return-object p0
.end method

.method public d(Lj3/d;)Ll3/p$a;
    .registers 3

    const-string v0, "Null priority"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ll3/d$b;->c:Lj3/d;

    return-object p0
.end method
