###### Class com.google.android.gms.ads.nonagon.signalgeneration.h (com.google.android.gms.ads.nonagon.signalgeneration.h)
.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/h;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbrr;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;Lcom/google/android/gms/internal/ads/zzbrr;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/h;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/h;->a:Lcom/google/android/gms/internal/ads/zzbrr;

    iput-boolean p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/h;->a:Lcom/google/android/gms/internal/ads/zzbrr;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbrr;->s(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/h;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->Ya(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/h;->a:Lcom/google/android/gms/internal/ads/zzbrr;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbrr;->q3(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/h;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->fb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/h;->b:Z

    if-eqz v0, :cond_6b

    .line 4
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/h;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->hb(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/h;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->Fb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    .line 6
    invoke-static {v1, v0, v3, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->tb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/h;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->Ab(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzfff;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfff;->c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfen;)V

    goto :goto_1c

    .line 8
    :cond_4b
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->Z6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/h;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->Ab(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzfff;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfff;->c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfen;)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6a} :catch_6c

    goto :goto_1c

    :cond_6b
    return-void

    :catch_6c
    move-exception p1

    const-string v0, ""

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
