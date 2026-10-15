###### Class s5.i (s5.i)
.class final Ls5/i;
.super Ls5/f0$e$a;
.source "AutoValue_CrashlyticsReport_Session_Application.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/i$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ls5/f0$e$a$b;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls5/f0$e$a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 2
    invoke-direct {p0}, Ls5/f0$e$a;-><init>()V

    .line 3
    iput-object p1, p0, Ls5/i;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Ls5/i;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Ls5/i;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Ls5/i;->d:Ls5/f0$e$a$b;

    .line 7
    iput-object p5, p0, Ls5/i;->e:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Ls5/i;->f:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Ls5/i;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls5/f0$e$a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls5/i$a;)V
    .registers 9

    .line 1
    invoke-direct/range {p0 .. p7}, Ls5/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls5/f0$e$a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ls5/f0$e$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_8f

    .line 2
    check-cast p1, Ls5/f0$e$a;

    .line 3
    iget-object v1, p0, Ls5/i;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ls5/f0$e$a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Ls5/i;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ls5/f0$e$a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Ls5/i;->c:Ljava/lang/String;

    if-nez v1, :cond_2e

    .line 5
    invoke-virtual {p1}, Ls5/f0$e$a;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8d

    goto :goto_38

    :cond_2e
    invoke-virtual {p1}, Ls5/f0$e$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    :goto_38
    iget-object v1, p0, Ls5/i;->d:Ls5/f0$e$a$b;

    if-nez v1, :cond_43

    .line 6
    invoke-virtual {p1}, Ls5/f0$e$a;->g()Ls5/f0$e$a$b;

    move-result-object v1

    if-nez v1, :cond_8d

    goto :goto_4d

    :cond_43
    invoke-virtual {p1}, Ls5/f0$e$a;->g()Ls5/f0$e$a$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    :goto_4d
    iget-object v1, p0, Ls5/i;->e:Ljava/lang/String;

    if-nez v1, :cond_58

    .line 7
    invoke-virtual {p1}, Ls5/f0$e$a;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8d

    goto :goto_62

    :cond_58
    invoke-virtual {p1}, Ls5/f0$e$a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    :goto_62
    iget-object v1, p0, Ls5/i;->f:Ljava/lang/String;

    if-nez v1, :cond_6d

    .line 8
    invoke-virtual {p1}, Ls5/f0$e$a;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8d

    goto :goto_77

    :cond_6d
    invoke-virtual {p1}, Ls5/f0$e$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    :goto_77
    iget-object v1, p0, Ls5/i;->g:Ljava/lang/String;

    if-nez v1, :cond_82

    .line 9
    invoke-virtual {p1}, Ls5/f0$e$a;->c()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8d

    goto :goto_8e

    :cond_82
    invoke-virtual {p1}, Ls5/f0$e$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    goto :goto_8e

    :cond_8d
    const/4 v0, 0x0

    :goto_8e
    return v0

    :cond_8f
    return v2
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ls5/f0$e$a$b;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/i;->d:Ls5/f0$e$a$b;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Ls5/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Ls5/i;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Ls5/i;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_20
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Ls5/i;->d:Ls5/f0$e$a$b;

    if-nez v2, :cond_29

    const/4 v2, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2d
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v2, p0, Ls5/i;->e:Ljava/lang/String;

    if-nez v2, :cond_36

    const/4 v2, 0x0

    goto :goto_3a

    :cond_36
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3a
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 6
    iget-object v2, p0, Ls5/i;->f:Ljava/lang/String;

    if-nez v2, :cond_43

    const/4 v2, 0x0

    goto :goto_47

    :cond_43
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_47
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 7
    iget-object v1, p0, Ls5/i;->g:Ljava/lang/String;

    if-nez v1, :cond_4f

    goto :goto_53

    :cond_4f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_53
    xor-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application{identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", organization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/i;->d:Ls5/f0$e$a$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", installationUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", developmentPlatform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", developmentPlatformVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class s5.i.a (s5.i$a)
.class synthetic Ls5/i$a;
.super Ljava/lang/Object;
.source "AutoValue_CrashlyticsReport_Session_Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class s5.i.b (s5.i$b)
.class final Ls5/i$b;
.super Ls5/f0$e$a$a;
.source "AutoValue_CrashlyticsReport_Session_Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ls5/f0$e$a$b;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ls5/f0$e$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ls5/f0$e$a;
    .registers 12

    .line 1
    iget-object v0, p0, Ls5/i$b;->a:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_17

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " identifier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_17
    iget-object v0, p0, Ls5/i$b;->b:Ljava/lang/String;

    if-nez v0, :cond_2c

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 6
    new-instance v0, Ls5/i;

    iget-object v3, p0, Ls5/i$b;->a:Ljava/lang/String;

    iget-object v4, p0, Ls5/i$b;->b:Ljava/lang/String;

    iget-object v5, p0, Ls5/i$b;->c:Ljava/lang/String;

    iget-object v6, p0, Ls5/i$b;->d:Ls5/f0$e$a$b;

    iget-object v7, p0, Ls5/i$b;->e:Ljava/lang/String;

    iget-object v8, p0, Ls5/i$b;->f:Ljava/lang/String;

    iget-object v9, p0, Ls5/i$b;->g:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ls5/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls5/f0$e$a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls5/i$a;)V

    return-object v0

    .line 7
    :cond_48
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

.method public b(Ljava/lang/String;)Ls5/f0$e$a$a;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/i$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ls5/f0$e$a$a;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/i$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Ls5/f0$e$a$a;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/i$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Ls5/f0$e$a$a;
    .registers 3

    const-string v0, "Null identifier"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls5/i$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Ls5/f0$e$a$a;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/i$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Ls5/f0$e$a$a;
    .registers 3

    const-string v0, "Null version"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls5/i$b;->b:Ljava/lang/String;

    return-object p0
.end method
