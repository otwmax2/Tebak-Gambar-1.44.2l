###### Class com.google.android.gms.internal.p000authapi.zbj (com.google.android.gms.internal.auth-api.zbj)
.class final Lcom/google/android/gms/internal/auth-api/zbj;
.super Lcom/google/android/gms/internal/auth-api/zbm;
.source "com.google.android.gms:play-services-auth@@20.2.0"


# virtual methods
.method protected final bridge synthetic f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 2

    return-object p1
.end method

.method protected final y(Landroid/content/Context;Lcom/google/android/gms/internal/auth-api/zbt;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/auth-api/zbk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/auth-api/zbk;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/auth-api/zbt;->Ra(Lcom/google/android/gms/internal/auth-api/zbs;)V

    return-void
.end method
