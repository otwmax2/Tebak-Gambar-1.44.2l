###### Class com.google.android.gms.ads.nonagon.signalgeneration.g (com.google.android.gms.ads.nonagon.signalgeneration.g)
.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/g;
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

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->a:Lcom/google/android/gms/internal/ads/zzbrr;

    iput-boolean p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->a:Lcom/google/android/gms/internal/ads/zzbrr;

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
    check-cast p1, Ljava/util/ArrayList;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->a:Lcom/google/android/gms/internal/ads/zzbrr;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbrr;->q3(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->gb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->b:Z

    if-eqz v0, :cond_66

    .line 3
    :cond_13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->ib(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->Fb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    .line 5
    invoke-static {v1, v0, v3, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->tb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->Ab(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzfff;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfff;->c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfen;)V

    goto :goto_17

    .line 7
    :cond_46
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->Z6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->Ab(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzfff;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfff;->c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfen;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_65} :catch_67

    goto :goto_17

    :cond_66
    return-void

    :catch_67
    move-exception p1

    const-string v0, ""

    .line 11
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
