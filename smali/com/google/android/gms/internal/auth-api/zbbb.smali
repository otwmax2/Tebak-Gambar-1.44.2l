###### Class com.google.android.gms.internal.p000authapi.zbbb (com.google.android.gms.internal.auth-api.zbbb)
.class public final Lcom/google/android/gms/internal/auth-api/zbbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.2.0"


# static fields
.field private static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbbb;->a:Ljava/util/Random;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/auth-api/zbbb;->a:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xb

    .line 2
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
