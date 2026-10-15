###### Class com.google.android.gms.internal.ads.zzfx (com.google.android.gms.internal.ads.zzfx)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnv;


# static fields
.field public static final synthetic o:Lcom/google/android/gms/internal/ads/zzfx;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfx;->o:Lcom/google/android/gms/internal/ads/zzfx;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_5

    goto :goto_31

    .line 1
    :cond_5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfnb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "text"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "text/vtt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_1f
    const-string v0, "html"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "xml"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    const/4 p1, 0x1

    return p1

    :cond_31
    :goto_31
    const/4 p1, 0x0

    return p1
.end method
