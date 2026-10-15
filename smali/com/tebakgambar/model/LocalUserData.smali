###### Class com.tebakgambar.model.LocalUserData (com.tebakgambar.model.LocalUserData)
.class public Lcom/tebakgambar/model/LocalUserData;
.super Ljava/lang/Object;
.source "LocalUserData.java"


# static fields
.field private static final KEY_IS_PENDING:Ljava/lang/String;

.field private static final KEY_LOGIN_TYPE:Ljava/lang/String;

.field private static final KEY_SYNC_TOKEN:Ljava/lang/String;

.field private static final KEY_USER_DATA:Ljava/lang/String;

.field private static final PREF_NAME:Ljava/lang/String; = "tebakgambar_localuserdata"

.field private static sInstance:Lcom/tebakgambar/model/LocalUserData;


# instance fields
.field private isPending:Z

.field private loginTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pendingGameData:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private syncToken:Ljava/lang/String;

.field private userData:Lcom/tebakgambar/model/UserData;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-class v0, Lcom/tebakgambar/model/LocalUserData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_sync_token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_SYNC_TOKEN:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_is_pending"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_IS_PENDING:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_user_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_USER_DATA:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_login_type"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tebakgambar/model/LocalUserData;->KEY_LOGIN_TYPE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    const-string v1, "tebakgambar_localuserdata"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    invoke-virtual {p0}, Lcom/tebakgambar/model/LocalUserData;->invalidate()V

    return-void
.end method

.method public static getInstance()Lcom/tebakgambar/model/LocalUserData;
    .registers 1

    .line 1
    sget-object v0, Lcom/tebakgambar/model/LocalUserData;->sInstance:Lcom/tebakgambar/model/LocalUserData;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/tebakgambar/model/LocalUserData;

    invoke-direct {v0}, Lcom/tebakgambar/model/LocalUserData;-><init>()V

    sput-object v0, Lcom/tebakgambar/model/LocalUserData;->sInstance:Lcom/tebakgambar/model/LocalUserData;

    .line 3
    :cond_b
    sget-object v0, Lcom/tebakgambar/model/LocalUserData;->sInstance:Lcom/tebakgambar/model/LocalUserData;

    return-object v0
.end method

.method public static getLoginSocialType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "line"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "3"

    return-object p0

    :cond_b
    const-string v0, "email"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "0"

    return-object p0

    :cond_16
    const-string v0, "facebook"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "1"

    return-object p0

    :cond_21
    const-string p0, "-1"

    return-object p0
.end method

.method public static getLoginType(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    const-string p0, "line"

    return-object p0

    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    const-string p0, "facebook"

    return-object p0

    :cond_c
    if-nez p0, :cond_11

    const-string p0, "email"

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addLoginType(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->loginTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/model/LocalUserData;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/tebakgambar/model/LocalUserData;->KEY_LOGIN_TYPE:Ljava/lang/String;

    iget-object v1, p0, Lcom/tebakgambar/model/LocalUserData;->loginTypes:Ljava/util/Set;

    .line 3
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public clearLoginData()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_SYNC_TOKEN:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_USER_DATA:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_IS_PENDING:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_LOGIN_TYPE:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tebakgambar/model/LocalUserData;->isPending:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->syncToken:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->userData:Lcom/tebakgambar/model/UserData;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->loginTypes:Ljava/util/Set;

    .line 12
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-virtual {v0}, Lm8/a;->r()V

    .line 13
    invoke-virtual {p0}, Lcom/tebakgambar/model/LocalUserData;->invalidateFabric()V

    return-void
.end method

.method public clearOldLoginData()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_SYNC_TOKEN:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_USER_DATA:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_IS_PENDING:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_LOGIN_TYPE:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tebakgambar/model/LocalUserData;->isPending:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->syncToken:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->userData:Lcom/tebakgambar/model/UserData;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->loginTypes:Ljava/util/Set;

    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->syncToken:Ljava/lang/String;

    const-string v1, "d78034b1630c3659076765d354111c3a1f5410372d14b5539234411a3e74b86b7b76d93cc"

    invoke-static {v0, v1}, Ly8/y;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLoginTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/model/LocalUserData;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->loginTypes:Ljava/util/Set;

    return-object v0

    .line 3
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getSyncToken()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->syncToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Lcom/tebakgambar/model/UserData;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->userData:Lcom/tebakgambar/model/UserData;

    return-object v0
.end method

.method public invalidate()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    const-string v1, "tebakgambar_localuserdata"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_IS_PENDING:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tebakgambar/model/LocalUserData;->isPending:Z

    .line 3
    sget-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_SYNC_TOKEN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tebakgambar/model/LocalUserData;->syncToken:Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_LOGIN_TYPE:Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/tebakgambar/model/LocalUserData;->loginTypes:Ljava/util/Set;

    .line 5
    sget-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_USER_DATA:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/gson/f;

    invoke-direct {v1}, Lcom/google/gson/f;-><init>()V

    const-class v2, Lcom/tebakgambar/model/UserData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/UserData;

    iput-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->userData:Lcom/tebakgambar/model/UserData;

    .line 7
    invoke-virtual {p0}, Lcom/tebakgambar/model/LocalUserData;->invalidateFabric()V

    return-void
.end method

.method public invalidateFabric()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->userData:Lcom/tebakgambar/model/UserData;

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, v0, Lcom/tebakgambar/model/UserData;->fullname:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 3
    :goto_8
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tebakgambar/model/LocalUserData;->syncToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/a;->g(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v1

    const-string v2, "full_name"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/model/LocalUserData;->syncToken:Ljava/lang/String;

    const-string v2, "sync_token"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/crashlytics/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isLoggedIn()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->syncToken:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/tebakgambar/model/LocalUserData;->isPending:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isPending()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/model/LocalUserData;->isPending:Z

    return v0
.end method

.method public setLoginData(Lcom/tebakgambar/model/response/AuthResult;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, p2, v0}, Lcom/tebakgambar/model/LocalUserData;->setLoginData(Lcom/tebakgambar/model/response/AuthResult;Ljava/lang/String;Z)V

    return-void
.end method

.method public setLoginData(Lcom/tebakgambar/model/response/AuthResult;Ljava/lang/String;Z)V
    .registers 6

    if-nez p3, :cond_1b

    .line 1
    iget-object v0, p1, Lcom/tebakgambar/model/response/AuthResult;->gameData:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 2
    new-instance v1, Lcom/tebakgambar/model/GameData;

    invoke-direct {v1, v0}, Lcom/tebakgambar/model/GameData;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lm8/a;->s(Lcom/tebakgambar/model/GameData;)V

    goto :goto_1f

    .line 4
    :cond_13
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-virtual {v0}, Lm8/a;->t()V

    goto :goto_1f

    .line 5
    :cond_1b
    iget-object v0, p1, Lcom/tebakgambar/model/response/AuthResult;->gameData:Ljava/lang/String;

    iput-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->pendingGameData:Ljava/lang/String;

    .line 6
    :goto_1f
    iget-object v0, p1, Lcom/tebakgambar/model/response/AuthResult;->syncToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->syncToken:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/tebakgambar/model/response/AuthResult;->userData:Lcom/tebakgambar/model/UserData;

    iput-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->userData:Lcom/tebakgambar/model/UserData;

    .line 8
    iput-boolean p3, p0, Lcom/tebakgambar/model/LocalUserData;->isPending:Z

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->loginTypes:Ljava/util/Set;

    .line 10
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p2, p0, Lcom/tebakgambar/model/LocalUserData;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/tebakgambar/model/LocalUserData;->KEY_USER_DATA:Ljava/lang/String;

    new-instance v1, Lcom/google/gson/f;

    invoke-direct {v1}, Lcom/google/gson/f;-><init>()V

    iget-object p1, p1, Lcom/tebakgambar/model/response/AuthResult;->userData:Lcom/tebakgambar/model/UserData;

    .line 12
    invoke-virtual {v1, p1}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object p2, Lcom/tebakgambar/model/LocalUserData;->KEY_IS_PENDING:Ljava/lang/String;

    .line 13
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object p2, Lcom/tebakgambar/model/LocalUserData;->KEY_SYNC_TOKEN:Ljava/lang/String;

    iget-object p3, p0, Lcom/tebakgambar/model/LocalUserData;->syncToken:Ljava/lang/String;

    .line 14
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object p2, Lcom/tebakgambar/model/LocalUserData;->KEY_LOGIN_TYPE:Ljava/lang/String;

    iget-object p3, p0, Lcom/tebakgambar/model/LocalUserData;->loginTypes:Ljava/util/Set;

    .line 15
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 17
    invoke-virtual {p0}, Lcom/tebakgambar/model/LocalUserData;->invalidateFabric()V

    return-void
.end method

.method public setPending(Z)V
    .registers 4

    if-nez p1, :cond_1f

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->pendingGameData:Ljava/lang/String;

    if-eqz v0, :cond_1f

    if-eqz v0, :cond_18

    .line 2
    new-instance v1, Lcom/tebakgambar/model/GameData;

    invoke-direct {v1, v0}, Lcom/tebakgambar/model/GameData;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lm8/a;->s(Lcom/tebakgambar/model/GameData;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->pendingGameData:Ljava/lang/String;

    goto :goto_1f

    .line 5
    :cond_18
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-virtual {v0}, Lm8/a;->t()V

    .line 6
    :cond_1f
    :goto_1f
    iput-boolean p1, p0, Lcom/tebakgambar/model/LocalUserData;->isPending:Z

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/model/LocalUserData;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/tebakgambar/model/LocalUserData;->KEY_IS_PENDING:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/tebakgambar/model/LocalUserData;->isPending:Z

    .line 8
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setUserData(Lcom/tebakgambar/model/UserData;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/model/LocalUserData;->userData:Lcom/tebakgambar/model/UserData;

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/model/LocalUserData;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/tebakgambar/model/LocalUserData;->KEY_USER_DATA:Ljava/lang/String;

    new-instance v2, Lcom/google/gson/f;

    invoke-direct {v2}, Lcom/google/gson/f;-><init>()V

    .line 3
    invoke-virtual {v2, p1}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5
    invoke-virtual {p0}, Lcom/tebakgambar/model/LocalUserData;->invalidateFabric()V

    return-void
.end method
