###### Class com.facebook.AuthenticationTokenCache (com.facebook.AuthenticationTokenCache)
.class public final Lcom/facebook/AuthenticationTokenCache;
.super Ljava/lang/Object;
.source "AuthenticationTokenCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AuthenticationTokenCache$Companion;
    }
.end annotation


# static fields
.field public static final CACHED_AUTHENTICATION_TOKEN_KEY:Ljava/lang/String; = "com.facebook.AuthenticationManager.CachedAuthenticationToken"

.field public static final Companion:Lcom/facebook/AuthenticationTokenCache$Companion;


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/AuthenticationTokenCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/AuthenticationTokenCache$Companion;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/AuthenticationTokenCache;->Companion:Lcom/facebook/AuthenticationTokenCache$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 2
    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.AuthenticationTokenManager.SharedPreferences"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FacebookSdk.getApplicationContext()\n              .getSharedPreferences(\n                  AuthenticationTokenManager.SHARED_PREFERENCES_NAME, Context.MODE_PRIVATE)"

    .line 4
    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/facebook/AuthenticationTokenCache;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 3

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/AuthenticationTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private final getCachedAuthenticationToken()Lcom/facebook/AuthenticationToken;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/facebook/AuthenticationTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "com.facebook.AuthenticationManager.CachedAuthenticationToken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/facebook/AuthenticationToken;

    invoke-direct {v0, v1}, Lcom/facebook/AuthenticationToken;-><init>(Lorg/json/JSONObject;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_15} :catch_16

    move-object v2, v0

    :catch_16
    :cond_16
    return-object v2
.end method

.method private final hasCachedAuthenticationToken()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/facebook/AuthenticationTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "com.facebook.AuthenticationManager.CachedAuthenticationToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final clear()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/facebook/AuthenticationTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.AuthenticationManager.CachedAuthenticationToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final load()Lcom/facebook/AuthenticationToken;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/facebook/AuthenticationTokenCache;->hasCachedAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-direct {p0}, Lcom/facebook/AuthenticationTokenCache;->getCachedAuthenticationToken()Lcom/facebook/AuthenticationToken;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final save(Lcom/facebook/AuthenticationToken;)V
    .registers 4

    const-string v0, "authenticationToken"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    invoke-virtual {p1}, Lcom/facebook/AuthenticationToken;->toJSONObject$facebook_core_release()Lorg/json/JSONObject;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/facebook/AuthenticationTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.AuthenticationManager.CachedAuthenticationToken"

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method

###### Class com.facebook.AuthenticationTokenCache.Companion (com.facebook.AuthenticationTokenCache$Companion)
.class public final Lcom/facebook/AuthenticationTokenCache$Companion;
.super Ljava/lang/Object;
.source "AuthenticationTokenCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthenticationTokenCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/AuthenticationTokenCache$Companion;-><init>()V

    return-void
.end method
