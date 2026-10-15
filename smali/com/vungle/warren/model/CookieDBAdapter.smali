###### Class com.vungle.warren.model.CookieDBAdapter (com.vungle.warren.model.CookieDBAdapter)
.class public Lcom/vungle/warren/model/CookieDBAdapter;
.super Ljava/lang/Object;
.source "CookieDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/DBAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/CookieDBAdapter$CookieColumns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/persistence/DBAdapter<",
        "Lcom/vungle/warren/model/Cookie;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATE_COOKIE_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS cookie(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, bools TEXT, ints TEXT, longs TEXT, strings TEXT )"


# instance fields
.field private a:Lcom/google/gson/f;

.field b:Ljava/lang/reflect/Type;

.field c:Ljava/lang/reflect/Type;

.field d:Ljava/lang/reflect/Type;

.field e:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/CookieDBAdapter;->a:Lcom/google/gson/f;

    .line 3
    new-instance v0, Lcom/vungle/warren/model/CookieDBAdapter$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/model/CookieDBAdapter$1;-><init>(Lcom/vungle/warren/model/CookieDBAdapter;)V

    invoke-virtual {v0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/CookieDBAdapter;->b:Ljava/lang/reflect/Type;

    .line 4
    new-instance v0, Lcom/vungle/warren/model/CookieDBAdapter$2;

    invoke-direct {v0, p0}, Lcom/vungle/warren/model/CookieDBAdapter$2;-><init>(Lcom/vungle/warren/model/CookieDBAdapter;)V

    invoke-virtual {v0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/CookieDBAdapter;->c:Ljava/lang/reflect/Type;

    .line 5
    new-instance v0, Lcom/vungle/warren/model/CookieDBAdapter$3;

    invoke-direct {v0, p0}, Lcom/vungle/warren/model/CookieDBAdapter$3;-><init>(Lcom/vungle/warren/model/CookieDBAdapter;)V

    invoke-virtual {v0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/CookieDBAdapter;->d:Ljava/lang/reflect/Type;

    .line 6
    new-instance v0, Lcom/vungle/warren/model/CookieDBAdapter$4;

    invoke-direct {v0, p0}, Lcom/vungle/warren/model/CookieDBAdapter$4;-><init>(Lcom/vungle/warren/model/CookieDBAdapter;)V

    invoke-virtual {v0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/CookieDBAdapter;->e:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/Cookie;
    .registers 6

    .line 2
    new-instance v0, Lcom/vungle/warren/model/Cookie;

    const-string v1, "item_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/model/CookieDBAdapter;->a:Lcom/google/gson/f;

    const-string v2, "bools"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/CookieDBAdapter;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/vungle/warren/model/Cookie;->b:Ljava/util/Map;

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/model/CookieDBAdapter;->a:Lcom/google/gson/f;

    const-string v2, "longs"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/CookieDBAdapter;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/vungle/warren/model/Cookie;->d:Ljava/util/Map;

    .line 5
    iget-object v1, p0, Lcom/vungle/warren/model/CookieDBAdapter;->a:Lcom/google/gson/f;

    const-string v2, "ints"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/CookieDBAdapter;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/vungle/warren/model/Cookie;->c:Ljava/util/Map;

    .line 6
    iget-object v1, p0, Lcom/vungle/warren/model/CookieDBAdapter;->a:Lcom/google/gson/f;

    const-string v2, "strings"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/vungle/warren/model/CookieDBAdapter;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, v0, Lcom/vungle/warren/model/Cookie;->a:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic fromContentValues(Landroid/content/ContentValues;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/CookieDBAdapter;->fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/Cookie;

    move-result-object p1

    return-object p1
.end method

.method public tableName()Ljava/lang/String;
    .registers 2

    const-string v0, "cookie"

    return-object v0
.end method

.method public toContentValues(Lcom/vungle/warren/model/Cookie;)Landroid/content/ContentValues;
    .registers 6

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget-object v1, p1, Lcom/vungle/warren/model/Cookie;->e:Ljava/lang/String;

    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/model/CookieDBAdapter;->a:Lcom/google/gson/f;

    iget-object v2, p1, Lcom/vungle/warren/model/Cookie;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/vungle/warren/model/CookieDBAdapter;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bools"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/vungle/warren/model/CookieDBAdapter;->a:Lcom/google/gson/f;

    iget-object v2, p1, Lcom/vungle/warren/model/Cookie;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/vungle/warren/model/CookieDBAdapter;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ints"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/vungle/warren/model/CookieDBAdapter;->a:Lcom/google/gson/f;

    iget-object v2, p1, Lcom/vungle/warren/model/Cookie;->d:Ljava/util/Map;

    iget-object v3, p0, Lcom/vungle/warren/model/CookieDBAdapter;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "longs"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/vungle/warren/model/CookieDBAdapter;->a:Lcom/google/gson/f;

    iget-object p1, p1, Lcom/vungle/warren/model/Cookie;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/vungle/warren/model/CookieDBAdapter;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "strings"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/CookieDBAdapter;->toContentValues(Lcom/vungle/warren/model/Cookie;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

###### Class com.vungle.warren.model.CookieDBAdapter.AnonymousClass1 (com.vungle.warren.model.CookieDBAdapter$1)
.class Lcom/vungle/warren/model/CookieDBAdapter$1;
.super Lg7/a;
.source "CookieDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/CookieDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg7/a<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/vungle/warren/model/CookieDBAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/model/CookieDBAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/model/CookieDBAdapter$1;->d:Lcom/vungle/warren/model/CookieDBAdapter;

    invoke-direct {p0}, Lg7/a;-><init>()V

    return-void
.end method

###### Class com.vungle.warren.model.CookieDBAdapter.AnonymousClass2 (com.vungle.warren.model.CookieDBAdapter$2)
.class Lcom/vungle/warren/model/CookieDBAdapter$2;
.super Lg7/a;
.source "CookieDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/CookieDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg7/a<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/vungle/warren/model/CookieDBAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/model/CookieDBAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/model/CookieDBAdapter$2;->d:Lcom/vungle/warren/model/CookieDBAdapter;

    invoke-direct {p0}, Lg7/a;-><init>()V

    return-void
.end method

###### Class com.vungle.warren.model.CookieDBAdapter.AnonymousClass3 (com.vungle.warren.model.CookieDBAdapter$3)
.class Lcom/vungle/warren/model/CookieDBAdapter$3;
.super Lg7/a;
.source "CookieDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/CookieDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg7/a<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/vungle/warren/model/CookieDBAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/model/CookieDBAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/model/CookieDBAdapter$3;->d:Lcom/vungle/warren/model/CookieDBAdapter;

    invoke-direct {p0}, Lg7/a;-><init>()V

    return-void
.end method

###### Class com.vungle.warren.model.CookieDBAdapter.AnonymousClass4 (com.vungle.warren.model.CookieDBAdapter$4)
.class Lcom/vungle/warren/model/CookieDBAdapter$4;
.super Lg7/a;
.source "CookieDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/CookieDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg7/a<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/vungle/warren/model/CookieDBAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/model/CookieDBAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/model/CookieDBAdapter$4;->d:Lcom/vungle/warren/model/CookieDBAdapter;

    invoke-direct {p0}, Lg7/a;-><init>()V

    return-void
.end method

###### Class com.vungle.warren.model.CookieDBAdapter.CookieColumns (com.vungle.warren.model.CookieDBAdapter$CookieColumns)
.class public interface abstract Lcom/vungle/warren/model/CookieDBAdapter$CookieColumns;
.super Ljava/lang/Object;
.source "CookieDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/IdColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/CookieDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CookieColumns"
.end annotation


# static fields
.field public static final COLUMN_BOOLS:Ljava/lang/String; = "bools"

.field public static final COLUMN_INTS:Ljava/lang/String; = "ints"

.field public static final COLUMN_LONGS:Ljava/lang/String; = "longs"

.field public static final COLUMN_STRINGS:Ljava/lang/String; = "strings"

.field public static final TABLE_NAME:Ljava/lang/String; = "cookie"
