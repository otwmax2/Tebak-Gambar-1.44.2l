###### Class com.google.android.gms.ads.internal.e (com.google.android.gms.ads.internal.e)
.class final Lcom/google/android/gms/ads/internal/e;
.super Landroid/os/AsyncTask;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/zzs;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzp;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/e;->a:Lcom/google/android/gms/ads/internal/zzs;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .registers 7

    const-string p1, ""

    .line 1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/e;->a:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzs;->ab(Lcom/google/android/gms/ads/internal/zzs;)Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzapw;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/zzs;->bb(Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/ads/zzapw;)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_15} :catch_1d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_15} :catch_1b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_21

    :catch_16
    move-exception v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    :catch_1b
    move-exception v0

    goto :goto_1e

    :catch_1d
    move-exception v0

    .line 3
    :goto_1e
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_21
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/e;->a:Lcom/google/android/gms/ads/internal/zzs;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->n()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/e;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/e;->a:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzs;->Va(Lcom/google/android/gms/ads/internal/zzs;)Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_13

    if-eqz p1, :cond_13

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzs;->Va(Lcom/google/android/gms/ads/internal/zzs;)Landroid/webkit/WebView;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
