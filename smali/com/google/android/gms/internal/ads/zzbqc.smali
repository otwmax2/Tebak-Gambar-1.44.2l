###### Class com.google.android.gms.internal.ads.zzbqc (com.google.android.gms.internal.ads.zzbqc)
.class public final Lcom/google/android/gms/internal/ads/zzbqc;
.super Lcom/google/android/gms/internal/ads/zzbqf;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final c:Ljava/util/Map;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V
    .registers 4

    const-string v0, "storePicture"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbqf;-><init>(Lcom/google/android/gms/internal/ads/zzcei;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqc;->c:Ljava/util/Map;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->g()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqc;->d:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic h(Lcom/google/android/gms/internal/ads/zzbqc;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbqc;->d:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final i()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqc;->d:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string v0, "Activity context is not available"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqc;->d:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbab;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbab;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbab;->c()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "Feature is not supported by the device."

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqc;->c:Ljava/util/Map;

    const-string v1, "iurl"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v0, "Image url cannot be empty."

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_36
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    goto :goto_b1

    :cond_4e
    const-string v2, "([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbyj;->d()Landroid/content/res/Resources;

    move-result-object v2

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbqc;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->g(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz v2, :cond_70

    .line 17
    sget v4, Lcom/google/android/gms/ads/impl/R$string;->k:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_72

    :cond_70
    const-string v4, "Save image"

    :goto_72
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_7e

    .line 18
    sget v4, Lcom/google/android/gms/ads/impl/R$string;->l:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_80

    :cond_7e
    const-string v4, "Allow Ad to store image in Picture gallery?"

    .line 19
    :goto_80
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_8c

    .line 20
    sget v4, Lcom/google/android/gms/ads/impl/R$string;->m:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8e

    :cond_8c
    const-string v4, "Accept"

    :goto_8e
    new-instance v5, Lcom/google/android/gms/internal/ads/zzbqa;

    invoke-direct {v5, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbqa;-><init>(Lcom/google/android/gms/internal/ads/zzbqc;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_9f

    .line 22
    sget v0, Lcom/google/android/gms/ads/impl/R$string;->n:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a1

    :cond_9f
    const-string v0, "Decline"

    :goto_a1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbqb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbqb;-><init>(Lcom/google/android/gms/internal/ads/zzbqc;)V

    .line 23
    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 24
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 26
    :cond_b1
    :goto_b1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Image type not recognized: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    return-void

    .line 28
    :cond_bf
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid image url: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    return-void
.end method
