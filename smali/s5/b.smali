###### Class s5.b (s5.b)
.class final Ls5/b;
.super Ls5/f0;
.source "AutoValue_CrashlyticsReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/b$b;
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ls5/f0$e;

.field private final k:Ls5/f0$d;

.field private final l:Ls5/f0$a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls5/f0$e;Ls5/f0$d;Ls5/f0$a;)V
    .registers 12

    .line 2
    invoke-direct {p0}, Ls5/f0;-><init>()V

    .line 3
    iput-object p1, p0, Ls5/b;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Ls5/b;->c:Ljava/lang/String;

    .line 5
    iput p3, p0, Ls5/b;->d:I

    .line 6
    iput-object p4, p0, Ls5/b;->e:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Ls5/b;->f:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Ls5/b;->g:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Ls5/b;->h:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Ls5/b;->i:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Ls5/b;->j:Ls5/f0$e;

    .line 12
    iput-object p10, p0, Ls5/b;->k:Ls5/f0$d;

    .line 13
    iput-object p11, p0, Ls5/b;->l:Ls5/f0$a;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls5/f0$e;Ls5/f0$d;Ls5/f0$a;Ls5/b$a;)V
    .registers 13

    .line 1
    invoke-direct/range {p0 .. p11}, Ls5/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls5/f0$e;Ls5/f0$d;Ls5/f0$a;)V

    return-void
.end method


# virtual methods
.method public c()Ls5/f0$a;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/b;->l:Ls5/f0$a;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ls5/f0;

    const/4 v2, 0x0

    if-eqz v1, :cond_bb

    .line 2
    check-cast p1, Ls5/f0;

    .line 3
    iget-object v1, p0, Ls5/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ls5/f0;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    iget-object v1, p0, Ls5/b;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ls5/f0;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    iget v1, p0, Ls5/b;->d:I

    .line 5
    invoke-virtual {p1}, Ls5/f0;->k()I

    move-result v3

    if-ne v1, v3, :cond_b9

    iget-object v1, p0, Ls5/b;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Ls5/f0;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    iget-object v1, p0, Ls5/b;->f:Ljava/lang/String;

    if-nez v1, :cond_42

    .line 7
    invoke-virtual {p1}, Ls5/f0;->g()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b9

    goto :goto_4c

    :cond_42
    invoke-virtual {p1}, Ls5/f0;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    :goto_4c
    iget-object v1, p0, Ls5/b;->g:Ljava/lang/String;

    if-nez v1, :cond_57

    .line 8
    invoke-virtual {p1}, Ls5/f0;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b9

    goto :goto_61

    :cond_57
    invoke-virtual {p1}, Ls5/f0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    :goto_61
    iget-object v1, p0, Ls5/b;->h:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Ls5/f0;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    iget-object v1, p0, Ls5/b;->i:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Ls5/f0;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    iget-object v1, p0, Ls5/b;->j:Ls5/f0$e;

    if-nez v1, :cond_84

    .line 11
    invoke-virtual {p1}, Ls5/f0;->m()Ls5/f0$e;

    move-result-object v1

    if-nez v1, :cond_b9

    goto :goto_8e

    :cond_84
    invoke-virtual {p1}, Ls5/f0;->m()Ls5/f0$e;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    :goto_8e
    iget-object v1, p0, Ls5/b;->k:Ls5/f0$d;

    if-nez v1, :cond_99

    .line 12
    invoke-virtual {p1}, Ls5/f0;->j()Ls5/f0$d;

    move-result-object v1

    if-nez v1, :cond_b9

    goto :goto_a3

    :cond_99
    invoke-virtual {p1}, Ls5/f0;->j()Ls5/f0$d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    :goto_a3
    iget-object v1, p0, Ls5/b;->l:Ls5/f0$a;

    if-nez v1, :cond_ae

    .line 13
    invoke-virtual {p1}, Ls5/f0;->c()Ls5/f0$a;

    move-result-object p1

    if-nez p1, :cond_b9

    goto :goto_ba

    :cond_ae
    invoke-virtual {p1}, Ls5/f0;->c()Ls5/f0$a;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b9

    goto :goto_ba

    :cond_b9
    const/4 v0, 0x0

    :goto_ba
    return v0

    :cond_bb
    return v2
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Ls5/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Ls5/b;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget v2, p0, Ls5/b;->d:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Ls5/b;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v2, p0, Ls5/b;->f:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_2a

    const/4 v2, 0x0

    goto :goto_2e

    :cond_2a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2e
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 6
    iget-object v2, p0, Ls5/b;->g:Ljava/lang/String;

    if-nez v2, :cond_37

    const/4 v2, 0x0

    goto :goto_3b

    :cond_37
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3b
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 7
    iget-object v2, p0, Ls5/b;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 8
    iget-object v2, p0, Ls5/b;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 9
    iget-object v2, p0, Ls5/b;->j:Ls5/f0$e;

    if-nez v2, :cond_56

    const/4 v2, 0x0

    goto :goto_5a

    :cond_56
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5a
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 10
    iget-object v2, p0, Ls5/b;->k:Ls5/f0$d;

    if-nez v2, :cond_63

    const/4 v2, 0x0

    goto :goto_67

    :cond_63
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_67
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 11
    iget-object v1, p0, Ls5/b;->l:Ls5/f0$a;

    if-nez v1, :cond_6f

    goto :goto_73

    :cond_6f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_73
    xor-int/2addr v0, v3

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ls5/f0$d;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/b;->k:Ls5/f0$d;

    return-object v0
.end method

.method public k()I
    .registers 2

    .line 1
    iget v0, p0, Ls5/b;->d:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ls5/f0$e;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/b;->j:Ls5/f0$e;

    return-object v0
.end method

.method protected n()Ls5/f0$b;
    .registers 3

    .line 1
    new-instance v0, Ls5/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls5/b$b;-><init>(Ls5/f0;Ls5/b$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrashlyticsReport{sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gmpAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls5/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", installationUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firebaseInstallationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appQualitySessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buildVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/b;->j:Ls5/f0$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ndkPayload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/b;->k:Ls5/f0$d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appExitInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/b;->l:Ls5/f0$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class s5.b.a (s5.b$a)
.class synthetic Ls5/b$a;
.super Ljava/lang/Object;
.source "AutoValue_CrashlyticsReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class s5.b.C0229b (s5.b$b)
.class final Ls5/b$b;
.super Ls5/f0$b;
.source "AutoValue_CrashlyticsReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ls5/f0$e;

.field private j:Ls5/f0$d;

.field private k:Ls5/f0$a;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ls5/f0$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Ls5/f0;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ls5/f0$b;-><init>()V

    .line 4
    invoke-virtual {p1}, Ls5/f0;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls5/b$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ls5/f0;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls5/b$b;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Ls5/f0;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ls5/b$b;->c:Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, Ls5/f0;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls5/b$b;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Ls5/f0;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls5/b$b;->e:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Ls5/f0;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls5/b$b;->f:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Ls5/f0;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls5/b$b;->g:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Ls5/f0;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls5/b$b;->h:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Ls5/f0;->m()Ls5/f0$e;

    move-result-object v0

    iput-object v0, p0, Ls5/b$b;->i:Ls5/f0$e;

    .line 13
    invoke-virtual {p1}, Ls5/f0;->j()Ls5/f0$d;

    move-result-object v0

    iput-object v0, p0, Ls5/b$b;->j:Ls5/f0$d;

    .line 14
    invoke-virtual {p1}, Ls5/f0;->c()Ls5/f0$a;

    move-result-object p1

    iput-object p1, p0, Ls5/b$b;->k:Ls5/f0$a;

    return-void
.end method

.method synthetic constructor <init>(Ls5/f0;Ls5/b$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ls5/b$b;-><init>(Ls5/f0;)V

    return-void
.end method


# virtual methods
.method public a()Ls5/f0;
    .registers 16

    .line 1
    iget-object v0, p0, Ls5/b$b;->a:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_17

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sdkVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_17
    iget-object v0, p0, Ls5/b$b;->b:Ljava/lang/String;

    if-nez v0, :cond_2c

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gmpAppId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_2c
    iget-object v0, p0, Ls5/b$b;->c:Ljava/lang/Integer;

    if-nez v0, :cond_41

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " platform"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_41
    iget-object v0, p0, Ls5/b$b;->d:Ljava/lang/String;

    if-nez v0, :cond_56

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " installationUuid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_56
    iget-object v0, p0, Ls5/b$b;->g:Ljava/lang/String;

    if-nez v0, :cond_6b

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " buildVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_6b
    iget-object v0, p0, Ls5/b$b;->h:Ljava/lang/String;

    if-nez v0, :cond_80

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " displayVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_80
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 14
    new-instance v0, Ls5/b;

    iget-object v3, p0, Ls5/b$b;->a:Ljava/lang/String;

    iget-object v4, p0, Ls5/b$b;->b:Ljava/lang/String;

    iget-object v1, p0, Ls5/b$b;->c:Ljava/lang/Integer;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Ls5/b$b;->d:Ljava/lang/String;

    iget-object v7, p0, Ls5/b$b;->e:Ljava/lang/String;

    iget-object v8, p0, Ls5/b$b;->f:Ljava/lang/String;

    iget-object v9, p0, Ls5/b$b;->g:Ljava/lang/String;

    iget-object v10, p0, Ls5/b$b;->h:Ljava/lang/String;

    iget-object v11, p0, Ls5/b$b;->i:Ls5/f0$e;

    iget-object v12, p0, Ls5/b$b;->j:Ls5/f0$d;

    iget-object v13, p0, Ls5/b$b;->k:Ls5/f0$a;

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Ls5/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls5/f0$e;Ls5/f0$d;Ls5/f0$a;Ls5/b$a;)V

    return-object v0

    .line 16
    :cond_a8
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

.method public b(Ls5/f0$a;)Ls5/f0$b;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/b$b;->k:Ls5/f0$a;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ls5/f0$b;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/b$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Ls5/f0$b;
    .registers 3

    const-string v0, "Null buildVersion"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls5/b$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Ls5/f0$b;
    .registers 3

    const-string v0, "Null displayVersion"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls5/b$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Ls5/f0$b;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/b$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Ls5/f0$b;
    .registers 3

    const-string v0, "Null gmpAppId"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls5/b$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Ls5/f0$b;
    .registers 3

    const-string v0, "Null installationUuid"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls5/b$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ls5/f0$d;)Ls5/f0$b;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/b$b;->j:Ls5/f0$d;

    return-object p0
.end method

.method public j(I)Ls5/f0$b;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ls5/b$b;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Ls5/f0$b;
    .registers 3

    const-string v0, "Null sdkVersion"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls5/b$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ls5/f0$e;)Ls5/f0$b;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/b$b;->i:Ls5/f0$e;

    return-object p0
.end method
