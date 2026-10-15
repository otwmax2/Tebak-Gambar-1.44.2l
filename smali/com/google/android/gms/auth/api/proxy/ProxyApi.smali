###### Class com.google.android.gms.auth.api.proxy.ProxyApi (com.google.android.gms.auth.api.proxy.ProxyApi)
.class public interface abstract Lcom/google/android/gms/auth/api/proxy/ProxyApi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/proxy/ProxyApi$SpatulaHeaderResult;,
        Lcom/google/android/gms/auth/api/proxy/ProxyApi$ProxyResult;
    }
.end annotation

###### Class com.google.android.gms.auth.api.proxy.ProxyApi.ProxyResult (com.google.android.gms.auth.api.proxy.ProxyApi$ProxyResult)
.class public interface abstract Lcom/google/android/gms/auth/api/proxy/ProxyApi$ProxyResult;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/proxy/ProxyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProxyResult"
.end annotation

###### Class com.google.android.gms.auth.api.proxy.ProxyApi.SpatulaHeaderResult (com.google.android.gms.auth.api.proxy.ProxyApi$SpatulaHeaderResult)
.class public interface abstract Lcom/google/android/gms/auth/api/proxy/ProxyApi$SpatulaHeaderResult;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/proxy/ProxyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SpatulaHeaderResult"
.end annotation
