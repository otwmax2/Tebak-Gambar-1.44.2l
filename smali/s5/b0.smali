###### Class s5.b0 (s5.b0)
.class final Ls5/b0;
.super Ls5/g0;
.source "AutoValue_StaticSessionData.java"


# instance fields
.field private final a:Ls5/g0$a;

.field private final b:Ls5/g0$c;

.field private final c:Ls5/g0$b;


# direct methods
.method constructor <init>(Ls5/g0$a;Ls5/g0$c;Ls5/g0$b;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ls5/g0;-><init>()V

    const-string v0, "Null appData"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ls5/b0;->a:Ls5/g0$a;

    const-string p1, "Null osData"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Ls5/b0;->b:Ls5/g0$c;

    const-string p1, "Null deviceData"

    .line 6
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Ls5/b0;->c:Ls5/g0$b;

    return-void
.end method


# virtual methods
.method public a()Ls5/g0$a;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/b0;->a:Ls5/g0$a;

    return-object v0
.end method

.method public c()Ls5/g0$b;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/b0;->c:Ls5/g0$b;

    return-object v0
.end method

.method public d()Ls5/g0$c;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/b0;->b:Ls5/g0$c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ls5/g0;

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    .line 2
    check-cast p1, Ls5/g0;

    .line 3
    iget-object v1, p0, Ls5/b0;->a:Ls5/g0$a;

    invoke-virtual {p1}, Ls5/g0;->a()Ls5/g0$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Ls5/b0;->b:Ls5/g0$c;

    .line 4
    invoke-virtual {p1}, Ls5/g0;->d()Ls5/g0$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Ls5/b0;->c:Ls5/g0$b;

    .line 5
    invoke-virtual {p1}, Ls5/g0;->c()Ls5/g0$b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0

    :cond_32
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Ls5/b0;->a:Ls5/g0$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Ls5/b0;->b:Ls5/g0$c;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v1, p0, Ls5/b0;->c:Ls5/g0$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StaticSessionData{appData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/b0;->a:Ls5/g0$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", osData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/b0;->b:Ls5/g0$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/b0;->c:Ls5/g0$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
