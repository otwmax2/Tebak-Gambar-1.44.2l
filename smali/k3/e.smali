###### Class k3.e (k3.e)
.class final Lk3/e;
.super Lk3/k;
.source "AutoValue_ClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/e$b;
    }
.end annotation


# instance fields
.field private final a:Lk3/k$b;

.field private final b:Lk3/a;


# direct methods
.method private constructor <init>(Lk3/k$b;Lk3/a;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Lk3/k;-><init>()V

    .line 3
    iput-object p1, p0, Lk3/e;->a:Lk3/k$b;

    .line 4
    iput-object p2, p0, Lk3/e;->b:Lk3/a;

    return-void
.end method

.method synthetic constructor <init>(Lk3/k$b;Lk3/a;Lk3/e$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lk3/e;-><init>(Lk3/k$b;Lk3/a;)V

    return-void
.end method


# virtual methods
.method public b()Lk3/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lk3/e;->b:Lk3/a;

    return-object v0
.end method

.method public c()Lk3/k$b;
    .registers 2

    .line 1
    iget-object v0, p0, Lk3/e;->a:Lk3/k$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lk3/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    .line 2
    check-cast p1, Lk3/k;

    .line 3
    iget-object v1, p0, Lk3/e;->a:Lk3/k$b;

    if-nez v1, :cond_16

    invoke-virtual {p1}, Lk3/k;->c()Lk3/k$b;

    move-result-object v1

    if-nez v1, :cond_36

    goto :goto_20

    :cond_16
    invoke-virtual {p1}, Lk3/k;->c()Lk3/k$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    :goto_20
    iget-object v1, p0, Lk3/e;->b:Lk3/a;

    if-nez v1, :cond_2b

    .line 4
    invoke-virtual {p1}, Lk3/k;->b()Lk3/a;

    move-result-object p1

    if-nez p1, :cond_36

    goto :goto_37

    :cond_2b
    invoke-virtual {p1}, Lk3/k;->b()Lk3/a;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    return v0

    :cond_38
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lk3/e;->a:Lk3/k$b;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_b
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 2
    iget-object v2, p0, Lk3/e;->b:Lk3/a;

    if-nez v2, :cond_16

    goto :goto_1a

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1a
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientInfo{clientType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk3/e;->a:Lk3/k$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", androidClientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk3/e;->b:Lk3/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class k3.e.a (k3.e$a)
.class synthetic Lk3/e$a;
.super Ljava/lang/Object;
.source "AutoValue_ClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class k3.e.b (k3.e$b)
.class final Lk3/e$b;
.super Lk3/k$a;
.source "AutoValue_ClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lk3/k$b;

.field private b:Lk3/a;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lk3/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lk3/k;
    .registers 5

    .line 1
    new-instance v0, Lk3/e;

    iget-object v1, p0, Lk3/e$b;->a:Lk3/k$b;

    iget-object v2, p0, Lk3/e$b;->b:Lk3/a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lk3/e;-><init>(Lk3/k$b;Lk3/a;Lk3/e$a;)V

    return-object v0
.end method

.method public b(Lk3/a;)Lk3/k$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lk3/e$b;->b:Lk3/a;

    return-object p0
.end method

.method public c(Lk3/k$b;)Lk3/k$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lk3/e$b;->a:Lk3/k$b;

    return-object p0
.end method
