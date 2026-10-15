###### Class com.google.android.gms.internal.ads.zzfje (com.google.android.gms.internal.ads.zzfje)
.class public final Lcom/google/android/gms/internal/ads/zzfje;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/io/File;

.field final b:Ljava/io/File;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final c:Landroid/content/SharedPreferences;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pcvmspf"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfje;->c:Landroid/content/SharedPreferences;

    const-string v0, "pccache"

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfjf;->a(Ljava/io/File;Z)Ljava/io/File;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfje;->a:Ljava/io/File;

    const-string v0, "tmppccache"

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfjf;->a(Ljava/io/File;Z)Ljava/io/File;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfje;->b:Ljava/io/File;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfje;->d:I

    return-void
.end method

.method private final d()Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfje;->a:Ljava/io/File;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfje;->d:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_18
    return-object v0
.end method

.method private final e()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfje;->d:I

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FBAMTD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final f()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfje;->d:I

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LATMTD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzasr;Lcom/google/android/gms/internal/ads/zzfjk;)Z
    .registers 10

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasr;->M()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasr;->L()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v2

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_185

    if-eqz v2, :cond_185

    array-length v3, v2

    if-nez v3, :cond_26

    goto/16 :goto_185

    :cond_26
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfje;->b:Ljava/io/File;

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfjf;->d(Ljava/io/File;)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfje;->b:Ljava/io/File;

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfje;->b:Ljava/io/File;

    .line 7
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfjf;->c(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfje;->b:Ljava/io/File;

    const-string v5, "pcam.jar"

    .line 9
    invoke-static {v0, v5, v3}, Lcom/google/android/gms/internal/ads/zzfjf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    if-eqz v1, :cond_4c

    array-length v6, v1

    if-lez v6, :cond_4c

    .line 10
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzfjf;->e(Ljava/io/File;[B)Z

    move-result v1

    if-eqz v1, :cond_185

    :cond_4c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfje;->b:Ljava/io/File;

    const-string v3, "pcbc"

    .line 11
    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzfjf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 12
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfjf;->e(Ljava/io/File;[B)Z

    move-result v0

    if-eqz v0, :cond_185

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfje;->b:Ljava/io/File;

    invoke-static {v0, v5, v1}, Lcom/google/android/gms/internal/ads/zzfjf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_78

    if-eqz p2, :cond_78

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzfjk;->a(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_77

    goto :goto_78

    :cond_77
    return v4

    .line 15
    :cond_78
    :goto_78
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8a

    :cond_87
    :goto_87
    const/4 p1, 0x0

    goto/16 :goto_13f

    .line 17
    :cond_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfje;->b:Ljava/io/File;

    .line 18
    invoke-static {p2, v5, v0}, Lcom/google/android/gms/internal/ads/zzfjf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfje;->b:Ljava/io/File;

    .line 19
    invoke-static {p2, v3, v2}, Lcom/google/android/gms/internal/ads/zzfjf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->d()Ljava/io/File;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzfjf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->d()Ljava/io/File;

    move-result-object v6

    invoke-static {p2, v3, v6}, Lcom/google/android/gms/internal/ads/zzfjf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b3

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_b3

    goto :goto_87

    .line 23
    :cond_b3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {v2, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_87

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzasu;->L()Lcom/google/android/gms/internal/ads/zzast;

    move-result-object p2

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzast;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzast;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasu;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzast;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzast;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasu;->I()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzast;->p(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasu;->K()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzast;->r(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasu;->J()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzast;->q(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzasu;

    .line 31
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfje;->b(I)Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfje;->c:Landroid/content/SharedPreferences;

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p2, :cond_129

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_129

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->e()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/util/Hex;->a([B)Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    :cond_129
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->f()Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->a([B)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_87

    const/4 p1, 0x1

    .line 41
    :goto_13f
    new-instance p2, Ljava/util/HashSet;

    .line 42
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 43
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfje;->b(I)Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v0

    if-eqz v0, :cond_151

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_151
    const/4 v0, 0x2

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfje;->b(I)Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v0

    if-eqz v0, :cond_15f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_15f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 48
    array-length v1, v0

    :goto_168
    if-ge v4, v1, :cond_184

    aget-object v2, v0, v4

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_181

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->d()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfjf;->c(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 52
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfjf;->d(Ljava/io/File;)Z

    :cond_181
    add-int/lit8 v4, v4, 0x1

    goto :goto_168

    :cond_184
    return p1

    :cond_185
    :goto_185
    return v4
.end method

.method final b(I)Lcom/google/android/gms/internal/ads/zzasu;
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfje;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    .line 2
    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfje;->c:Landroid/content/SharedPreferences;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    return-object v0

    .line 5
    :cond_20
    :try_start_20
    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->c(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->J([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzasu;->O(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pcam.jar"

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->d()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfjf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4a

    const-string v2, "pcam"

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->d()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfjf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    :cond_4a
    const-string v3, "pcbc"

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->d()Ljava/io/File;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfjf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_5e
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_20 .. :try_end_5e} :catch_61

    if-eqz v1, :cond_61

    return-object p1

    :catch_61
    :cond_61
    return-object v0
.end method

.method public final c(I)Lcom/google/android/gms/internal/ads/zzfjd;
    .registers 7

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfje;->b(I)Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object p1

    if-nez p1, :cond_9

    const/4 p1, 0x0

    return-object p1

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->d()Ljava/io/File;

    move-result-object v1

    const-string v2, "pcam.jar"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfjf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_27

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->d()Ljava/io/File;

    move-result-object v1

    const-string v2, "pcam"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfjf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 5
    :cond_27
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->d()Ljava/io/File;

    move-result-object v2

    const-string v3, "pcopt"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzfjf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfje;->d()Ljava/io/File;

    move-result-object v3

    const-string v4, "pcbc"

    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzfjf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfjd;

    invoke-direct {v3, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfjd;-><init>(Lcom/google/android/gms/internal/ads/zzasu;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-object v3
.end method
