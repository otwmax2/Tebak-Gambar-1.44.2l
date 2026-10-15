###### Class n6.a (n6.a)
.class final Ln6/a;
.super Ln6/d;
.source "AutoValue_PersistedInstallationEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln6/a$b;
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ln6/c$a;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:J

.field private final g:J

.field private final h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ln6/c$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .registers 10

    .line 2
    invoke-direct {p0}, Ln6/d;-><init>()V

    .line 3
    iput-object p1, p0, Ln6/a;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Ln6/a;->c:Ln6/c$a;

    .line 5
    iput-object p3, p0, Ln6/a;->d:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Ln6/a;->e:Ljava/lang/String;

    .line 7
    iput-wide p5, p0, Ln6/a;->f:J

    .line 8
    iput-wide p7, p0, Ln6/a;->g:J

    .line 9
    iput-object p9, p0, Ln6/a;->h:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ln6/c$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ln6/a$a;)V
    .registers 11

    .line 1
    invoke-direct/range {p0 .. p9}, Ln6/a;-><init>(Ljava/lang/String;Ln6/c$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ln6/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ln6/a;->f:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ln6/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ln6/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ln6/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_82

    .line 2
    check-cast p1, Ln6/d;

    .line 3
    iget-object v1, p0, Ln6/a;->b:Ljava/lang/String;

    if-nez v1, :cond_16

    invoke-virtual {p1}, Ln6/d;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_80

    goto :goto_20

    :cond_16
    invoke-virtual {p1}, Ln6/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    :goto_20
    iget-object v1, p0, Ln6/a;->c:Ln6/c$a;

    .line 4
    invoke-virtual {p1}, Ln6/d;->g()Ln6/c$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    iget-object v1, p0, Ln6/a;->d:Ljava/lang/String;

    if-nez v1, :cond_37

    .line 5
    invoke-virtual {p1}, Ln6/d;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_80

    goto :goto_41

    :cond_37
    invoke-virtual {p1}, Ln6/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    :goto_41
    iget-object v1, p0, Ln6/a;->e:Ljava/lang/String;

    if-nez v1, :cond_4c

    .line 6
    invoke-virtual {p1}, Ln6/d;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_80

    goto :goto_56

    :cond_4c
    invoke-virtual {p1}, Ln6/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    :goto_56
    iget-wide v3, p0, Ln6/a;->f:J

    .line 7
    invoke-virtual {p1}, Ln6/d;->c()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_80

    iget-wide v3, p0, Ln6/a;->g:J

    .line 8
    invoke-virtual {p1}, Ln6/d;->h()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_80

    iget-object v1, p0, Ln6/a;->h:Ljava/lang/String;

    if-nez v1, :cond_75

    .line 9
    invoke-virtual {p1}, Ln6/d;->e()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_80

    goto :goto_81

    :cond_75
    invoke-virtual {p1}, Ln6/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    goto :goto_81

    :cond_80
    const/4 v0, 0x0

    :goto_81
    return v0

    :cond_82
    return v2
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ln6/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ln6/c$a;
    .registers 2

    .line 1
    iget-object v0, p0, Ln6/a;->c:Ln6/c$a;

    return-object v0
.end method

.method public h()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ln6/a;->g:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 9

    .line 1
    iget-object v0, p0, Ln6/a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 2
    iget-object v3, p0, Ln6/a;->c:Ln6/c$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 3
    iget-object v3, p0, Ln6/a;->d:Ljava/lang/String;

    if-nez v3, :cond_20

    const/4 v3, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_24
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 4
    iget-object v3, p0, Ln6/a;->e:Ljava/lang/String;

    if-nez v3, :cond_2d

    const/4 v3, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_31
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 5
    iget-wide v3, p0, Ln6/a;->f:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    long-to-int v4, v3

    xor-int/2addr v0, v4

    mul-int v0, v0, v2

    .line 6
    iget-wide v3, p0, Ln6/a;->g:J

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    xor-int/2addr v0, v4

    mul-int v0, v0, v2

    .line 7
    iget-object v2, p0, Ln6/a;->h:Ljava/lang/String;

    if-nez v2, :cond_4d

    goto :goto_51

    :cond_4d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_51
    xor-int/2addr v0, v1

    return v0
.end method

.method public n()Ln6/d$a;
    .registers 3

    .line 1
    new-instance v0, Ln6/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln6/a$b;-><init>(Ln6/d;Ln6/a$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistedInstallationEntry{firebaseInstallationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln6/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", registrationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln6/a;->c:Ln6/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln6/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln6/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiresInSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ln6/a;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tokenCreationEpochInSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ln6/a;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fisError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln6/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class n6.a.C0206a (n6.a$a)
.class synthetic Ln6/a$a;
.super Ljava/lang/Object;
.source "AutoValue_PersistedInstallationEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class n6.a.b (n6.a$b)
.class final Ln6/a$b;
.super Ln6/d$a;
.source "AutoValue_PersistedInstallationEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ln6/c$a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ln6/d$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Ln6/d;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ln6/d$a;-><init>()V

    .line 4
    invoke-virtual {p1}, Ln6/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln6/a$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ln6/d;->g()Ln6/c$a;

    move-result-object v0

    iput-object v0, p0, Ln6/a$b;->b:Ln6/c$a;

    .line 6
    invoke-virtual {p1}, Ln6/d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln6/a$b;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Ln6/d;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln6/a$b;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Ln6/d;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ln6/a$b;->e:Ljava/lang/Long;

    .line 9
    invoke-virtual {p1}, Ln6/d;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ln6/a$b;->f:Ljava/lang/Long;

    .line 10
    invoke-virtual {p1}, Ln6/d;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln6/a$b;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ln6/d;Ln6/a$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ln6/a$b;-><init>(Ln6/d;)V

    return-void
.end method


# virtual methods
.method public a()Ln6/d;
    .registers 14

    .line 1
    iget-object v0, p0, Ln6/a$b;->b:Ln6/c$a;

    const-string v1, ""

    if-nez v0, :cond_17

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " registrationStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_17
    iget-object v0, p0, Ln6/a$b;->e:Ljava/lang/Long;

    if-nez v0, :cond_2c

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expiresInSecs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_2c
    iget-object v0, p0, Ln6/a$b;->f:Ljava/lang/Long;

    if-nez v0, :cond_41

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tokenCreationEpochInSecs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_41
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 8
    new-instance v0, Ln6/a;

    iget-object v3, p0, Ln6/a$b;->a:Ljava/lang/String;

    iget-object v4, p0, Ln6/a$b;->b:Ln6/c$a;

    iget-object v5, p0, Ln6/a$b;->c:Ljava/lang/String;

    iget-object v6, p0, Ln6/a$b;->d:Ljava/lang/String;

    iget-object v1, p0, Ln6/a$b;->e:Ljava/lang/Long;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, p0, Ln6/a$b;->f:Ljava/lang/Long;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Ln6/a$b;->g:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Ln6/a;-><init>(Ljava/lang/String;Ln6/c$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ln6/a$a;)V

    return-object v0

    .line 11
    :cond_65
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

.method public b(Ljava/lang/String;)Ln6/d$a;
    .registers 2

    .line 1
    iput-object p1, p0, Ln6/a$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(J)Ln6/d$a;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ln6/a$b;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Ln6/d$a;
    .registers 2

    .line 1
    iput-object p1, p0, Ln6/a$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Ln6/d$a;
    .registers 2

    .line 1
    iput-object p1, p0, Ln6/a$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Ln6/d$a;
    .registers 2

    .line 1
    iput-object p1, p0, Ln6/a$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ln6/c$a;)Ln6/d$a;
    .registers 3

    const-string v0, "Null registrationStatus"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ln6/a$b;->b:Ln6/c$a;

    return-object p0
.end method

.method public h(J)Ln6/d$a;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ln6/a$b;->f:Ljava/lang/Long;

    return-object p0
.end method
