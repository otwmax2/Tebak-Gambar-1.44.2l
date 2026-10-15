###### Class com.google.android.gms.internal.ads.zzeni (com.google.android.gms.internal.ads.zzeni)
.class public final Lcom/google/android/gms/internal/ads/zzeni;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfuu;

.field private final b:Lcom/google/android/gms/internal/ads/zzeyx;

.field private final c:Landroid/content/pm/PackageInfo;

.field private final d:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfuu;Lcom/google/android/gms/internal/ads/zzeyx;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeni;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeni;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeni;->c:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeni;->d:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/internal/ads/zzeni;)Lcom/google/android/gms/internal/ads/zzenj;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeni;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyx;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    sget-object p0, Lcom/google/android/gms/internal/ads/zzene;->a:Lcom/google/android/gms/internal/ads/zzene;

    goto :goto_18

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object p0, Lcom/google/android/gms/internal/ads/zzenf;->a:Lcom/google/android/gms/internal/ads/zzenf;

    goto :goto_18

    :cond_12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeng;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzeng;-><init>(Lcom/google/android/gms/internal/ads/zzeni;Ljava/util/ArrayList;)V

    move-object p0, v1

    :goto_18
    return-object p0
.end method


# virtual methods
.method final synthetic b(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 11

    const-string v0, "native_version"

    const/4 v1, 0x3

    .line 1
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "native_templates"

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeni;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyx;->h:Ljava/util/ArrayList;

    const-string v0, "native_custom_templates"

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeni;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyx;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbdl;->o:I

    const-string v0, "landscape"

    const-string v2, "portrait"

    const-string v3, "any"

    const-string v4, "unknown"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le p1, v1, :cond_4f

    const-string p1, "enable_native_media_orientation"

    .line 5
    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeni;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyx;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbdl;->v:I

    if-eq p1, v6, :cond_43

    if-eq p1, v5, :cond_41

    if-eq p1, v1, :cond_3f

    const/4 v7, 0x4

    if-eq p1, v7, :cond_3c

    move-object p1, v4

    goto :goto_44

    :cond_3c
    const-string p1, "square"

    goto :goto_44

    :cond_3f
    move-object p1, v2

    goto :goto_44

    :cond_41
    move-object p1, v0

    goto :goto_44

    :cond_43
    move-object p1, v3

    .line 6
    :goto_44
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f

    const-string v7, "native_media_orientation"

    .line 7
    invoke-virtual {p2, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeni;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyx;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbdl;->q:I

    if-eqz p1, :cond_5f

    if-eq p1, v6, :cond_5d

    if-eq p1, v5, :cond_60

    move-object v0, v4

    goto :goto_60

    :cond_5d
    move-object v0, v2

    goto :goto_60

    :cond_5f
    move-object v0, v3

    .line 8
    :cond_60
    :goto_60
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    const-string p1, "native_image_orientation"

    .line 9
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeni;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyx;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 10
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbdl;->r:Z

    const-string v0, "native_multiple_images"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeni;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyx;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 11
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbdl;->u:Z

    const-string v0, "use_custom_mute"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeni;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyx;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 12
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzbdl;->w:I

    if-eqz v0, :cond_9b

    .line 13
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbdl;->x:Z

    const-string v0, "sccg_tap"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeni;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyx;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 14
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbdl;->w:I

    const-string v0, "sccg_dir"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_9b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeni;->c:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_a1

    const/4 p1, 0x0

    goto :goto_a3

    .line 15
    :cond_a1
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 16
    :goto_a3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeni;->d:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zza()I

    move-result v0

    if-le p1, v0, :cond_b5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeni;->d:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeni;->d:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 19
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->z0(I)V

    :cond_b5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeni;->d:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzg;->n()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_cc

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeni;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzeyx;->f:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_cc

    .line 22
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    :cond_cc
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d7

    const-string p1, "native_advanced_settings"

    .line 24
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeni;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzeyx;->k:I

    if-le p1, v6, :cond_e2

    const-string v0, "max_num_ads"

    .line 25
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_e2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeni;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyx;->b:Lcom/google/android/gms/internal/ads/zzbjx;

    if-eqz p1, :cond_131

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbjx;->q:Ljava/lang/String;

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_125

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzbjx;->o:I

    const-string v2, "p"

    const-string v3, "l"

    if-lt v0, v5, :cond_ff

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbjx;->r:I

    if-eq p1, v5, :cond_11e

    if-eq p1, v1, :cond_11f

    goto :goto_11e

    .line 27
    :cond_ff
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbjx;->p:I

    if-eq p1, v6, :cond_11e

    if-eq p1, v5, :cond_11f

    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instream ad video aspect ratio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is wrong."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    :cond_11e
    :goto_11e
    move-object v2, v3

    :cond_11f
    const-string p1, "ia_var"

    .line 29
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12c

    .line 30
    :cond_125
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbjx;->q:Ljava/lang/String;

    const-string v0, "ad_tag"

    .line 31
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12c
    const-string p1, "instr"

    .line 32
    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_131
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeni;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeyx;->a()Lcom/google/android/gms/internal/ads/zzbfo;

    move-result-object p1

    if-eqz p1, :cond_13e

    const-string p1, "has_delayed_banner_listener"

    .line 34
    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_13e
    return-void
.end method

.method public final zza()I
    .registers 2

    const/16 v0, 0x1a

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeni;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzenh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzenh;-><init>(Lcom/google/android/gms/internal/ads/zzeni;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzene (com.google.android.gms.internal.ads.zzene)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzene;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzenj;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzene;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzene;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzene;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzene;->a:Lcom/google/android/gms/internal/ads/zzene;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/os/Bundle;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzenf (com.google.android.gms.internal.ads.zzenf)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzenf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzenj;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzenf;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzenf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzenf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzenf;->a:Lcom/google/android/gms/internal/ads/zzenf;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "native_version"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzeng (com.google.android.gms.internal.ads.zzeng)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzeng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzenj;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzeni;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeni;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeng;->a:Lcom/google/android/gms/internal/ads/zzeni;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeng;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeng;->a:Lcom/google/android/gms/internal/ads/zzeni;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeng;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeni;->b(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzenh (com.google.android.gms.internal.ads.zzenh)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzenh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzeni;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeni;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenh;->a:Lcom/google/android/gms/internal/ads/zzeni;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenh;->a:Lcom/google/android/gms/internal/ads/zzeni;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeni;->a(Lcom/google/android/gms/internal/ads/zzeni;)Lcom/google/android/gms/internal/ads/zzenj;

    move-result-object v0

    return-object v0
.end method
