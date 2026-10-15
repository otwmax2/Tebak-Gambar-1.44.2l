###### Class com.facebook.FacebookSdkVersion (com.facebook.FacebookSdkVersion)
.class public final Lcom/facebook/FacebookSdkVersion;
.super Ljava/lang/Object;
.source "FacebookSdkVersion.kt"


# static fields
.field public static final BUILD:Ljava/lang/String; = "16.0.0"

.field public static final INSTANCE:Lcom/facebook/FacebookSdkVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/FacebookSdkVersion;

    invoke-direct {v0}, Lcom/facebook/FacebookSdkVersion;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdkVersion;->INSTANCE:Lcom/facebook/FacebookSdkVersion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
