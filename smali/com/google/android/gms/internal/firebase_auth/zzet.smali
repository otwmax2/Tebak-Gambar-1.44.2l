###### Class com.google.android.gms.internal.firebase_auth.zzet (com.google.android.gms.internal.firebase_auth.zzet)
.class public final enum Lcom/google/android/gms/internal/firebase_auth/zzet;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_auth/zzet;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Lcom/google/android/gms/internal/firebase_auth/zzet;

.field private static final enum q:Lcom/google/android/gms/internal/firebase_auth/zzet;

.field private static final synthetic r:[Lcom/google/android/gms/internal/firebase_auth/zzet;


# instance fields
.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzet;

    const-string v1, "REFRESH_TOKEN"

    const/4 v2, 0x0

    const-string v3, "refresh_token"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzet;->p:Lcom/google/android/gms/internal/firebase_auth/zzet;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzet;

    const-string v3, "AUTHORIZATION_CODE"

    const/4 v4, 0x1

    const-string v5, "authorization_code"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_auth/zzet;->q:Lcom/google/android/gms/internal/firebase_auth/zzet;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/firebase_auth/zzet;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/android/gms/internal/firebase_auth/zzet;->r:[Lcom/google/android/gms/internal/firebase_auth/zzet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzet;->o:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_auth/zzet;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzet;->r:[Lcom/google/android/gms/internal/firebase_auth/zzet;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_auth/zzet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_auth/zzet;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzet;->o:Ljava/lang/String;

    return-object v0
.end method
