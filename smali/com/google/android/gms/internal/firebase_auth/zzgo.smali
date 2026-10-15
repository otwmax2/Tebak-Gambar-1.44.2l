###### Class com.google.android.gms.internal.firebase_auth.zzgo (com.google.android.gms.internal.firebase_auth.zzgo)
.class public abstract Lcom/google/android/gms/internal/firebase_auth/zzgo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/gms/internal/firebase_auth/zzjn;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/firebase_auth/zzhs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzhs;->a()Lcom/google/android/gms/internal/firebase_auth/zzhs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgo;->a:Lcom/google/android/gms/internal/firebase_auth/zzhs;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
