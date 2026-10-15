###### Class com.google.android.gms.ads.internal.b (com.google.android.gms.ads.internal.b)
.class final Lcom/google/android/gms/ads/internal/b;
.super Landroid/webkit/WebViewClient;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzs;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p2

    const-string p3, "#007 Could not call remote method."

    if-eqz p2, :cond_1c

    :try_start_a
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzezx;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbh;->A(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p1

    .line 3
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_1c
    :goto_1c
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p2

    if-eqz p2, :cond_31

    :try_start_24
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbh;->F(I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p1

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->r()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    return v0

    :cond_e
    const-string p1, "gmsg://noAdLoaded"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, "#007 Could not call remote method."

    const/4 v3, 0x1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p2

    const/4 v4, 0x3

    if-eqz p2, :cond_33

    :try_start_23
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    .line 3
    invoke-static {v4, v1, v1}, Lcom/google/android/gms/internal/ads/zzezx;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 4
    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbh;->A(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p1

    .line 5
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_33
    :goto_33
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p2

    if-eqz p2, :cond_47

    :try_start_3b
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    .line 7
    invoke-interface {p1, v4}, Lcom/google/android/gms/ads/internal/client/zzbh;->F(I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception p1

    .line 8
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzs;->Ta(I)V

    return v3

    :cond_4d
    const-string p1, "gmsg://scriptLoadFailed"

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_87

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p2

    if-eqz p2, :cond_6d

    :try_start_5d
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    .line 12
    invoke-static {v3, v1, v1}, Lcom/google/android/gms/internal/ads/zzezx;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 13
    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbh;->A(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception p1

    .line 14
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_6d
    :goto_6d
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p2

    if-eqz p2, :cond_81

    :try_start_75
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    .line 16
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzbh;->F(I)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7c} :catch_7d

    goto :goto_81

    :catch_7d
    move-exception p1

    .line 17
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :cond_81
    :goto_81
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzs;->Ta(I)V

    return v3

    :cond_87
    const-string p1, "gmsg://adResized"

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_af

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v0

    if-eqz v0, :cond_a3

    :try_start_97
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbh;->g()V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9e} :catch_9f

    goto :goto_a3

    :catch_9f
    move-exception p1

    .line 22
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :cond_a3
    :goto_a3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzs;->u(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    .line 25
    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/zzs;->Ta(I)V

    return v3

    :cond_af
    const-string p1, "gmsg://"

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b8

    return v3

    :cond_b8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v0

    if-eqz v0, :cond_d5

    :try_start_c0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    .line 27
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbh;->a()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->Xa(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbh;->f()V
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_d0} :catch_d1

    goto :goto_d5

    :catch_d1
    move-exception p1

    .line 29
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :cond_d5
    :goto_d5
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    .line 31
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/zzs;->Za(Lcom/google/android/gms/ads/internal/zzs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzs;

    .line 32
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/zzs;->cb(Lcom/google/android/gms/ads/internal/zzs;Ljava/lang/String;)V

    return v3
.end method
