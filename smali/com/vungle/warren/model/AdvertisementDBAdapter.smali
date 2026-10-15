###### Class com.vungle.warren.model.AdvertisementDBAdapter (com.vungle.warren.model.AdvertisementDBAdapter)
.class public Lcom/vungle/warren/model/AdvertisementDBAdapter;
.super Ljava/lang/Object;
.source "AdvertisementDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/DBAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/AdvertisementDBAdapter$AdvertisementColumns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/persistence/DBAdapter<",
        "Lcom/vungle/warren/model/Advertisement;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATE_ADVERTISEMENT_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS advertisement(_id INTEGER PRIMARY KEY AUTOINCREMENT,  item_id TEXT UNIQUE, ad_config TEXT,ad_type INT, expire_time NUMERIC, delay NUMERIC, show_close_delay INT, show_close_incentivized INT, countdown INT, video_height INT, video_width INT, cta_overlay_enabled SHORT, cta_click_area NUMERIC, retry_count INT, requires_non_market_install SHORT, app_id TEXT, campaign TEXT, video_url TEXT, md5 TEXT, postroll_bundle_url TEXT, cta_destination_url TEXT, cta_url TEXT, ad_token TEXT, video_identifier TEXT, template_url TEXT, TEMPLATE_ID TEXT, TEMPLATE_TYPE TEXT, ad_market_id TEXT,bid_token TEXT,  checkpoints TEXT, template_settings TEXT, mraid_files TEXT, cacheable_assets TEXT, state INT, placement_id TEXT, tt_download NUMERIC,asset_download_timestamp NUMERIC,asset_download_duration NUMERIC,ad_request_start_time NUMERIC,column_enable_om_sdk SHORT,column_om_sdk_extra_vast TEXT,column_request_timestamp NUMERIC, dynamic_events_and_urls TEXT, column_assets_fully_downloaded SHORT)"

.field static final e:Ljava/lang/reflect/Type;

.field static final f:Ljava/lang/reflect/Type;


# instance fields
.field private a:Lcom/google/gson/f;

.field private b:Ljava/lang/reflect/Type;

.field private c:Ljava/lang/reflect/Type;

.field private d:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/vungle/warren/model/AdvertisementDBAdapter$3;

    invoke-direct {v0}, Lcom/vungle/warren/model/AdvertisementDBAdapter$3;-><init>()V

    .line 2
    invoke-virtual {v0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->e:Ljava/lang/reflect/Type;

    .line 3
    new-instance v0, Lcom/vungle/warren/model/AdvertisementDBAdapter$4;

    invoke-direct {v0}, Lcom/vungle/warren/model/AdvertisementDBAdapter$4;-><init>()V

    .line 4
    invoke-virtual {v0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->f:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->a:Lcom/google/gson/f;

    .line 3
    new-instance v0, Lcom/vungle/warren/model/AdvertisementDBAdapter$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/model/AdvertisementDBAdapter$1;-><init>(Lcom/vungle/warren/model/AdvertisementDBAdapter;)V

    .line 4
    invoke-virtual {v0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->b:Ljava/lang/reflect/Type;

    .line 5
    new-instance v0, Lcom/vungle/warren/model/AdvertisementDBAdapter$2;

    invoke-direct {v0, p0}, Lcom/vungle/warren/model/AdvertisementDBAdapter$2;-><init>(Lcom/vungle/warren/model/AdvertisementDBAdapter;)V

    .line 6
    invoke-virtual {v0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->c:Ljava/lang/reflect/Type;

    .line 7
    new-instance v0, Lcom/vungle/warren/model/AdvertisementDBAdapter$5;

    invoke-direct {v0, p0}, Lcom/vungle/warren/model/AdvertisementDBAdapter$5;-><init>(Lcom/vungle/warren/model/AdvertisementDBAdapter;)V

    .line 8
    invoke-virtual {v0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->d:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/Advertisement;
    .registers 6

    .line 2
    new-instance v0, Lcom/vungle/warren/model/Advertisement;

    invoke-direct {v0}, Lcom/vungle/warren/model/Advertisement;-><init>()V

    const-string v1, "item_id"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->q:Ljava/lang/String;

    const-string v1, "ad_type"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->p:I

    const-string v1, "expire_time"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/Advertisement;->s:J

    const-string v1, "delay"

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->v:I

    const-string v1, "show_close_delay"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->x:I

    const-string v1, "show_close_incentivized"

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->y:I

    const-string v1, "countdown"

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->z:I

    const-string v1, "video_width"

    .line 10
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->B:I

    const-string v1, "video_height"

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->C:I

    const-string v1, "retry_count"

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->K:I

    const-string v1, "requires_non_market_install"

    .line 13
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vungle/warren/model/Advertisement;->W:Z

    const-string v1, "app_id"

    .line 14
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->r:Ljava/lang/String;

    const-string v1, "campaign"

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->w:Ljava/lang/String;

    const-string v1, "video_url"

    .line 16
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->A:Ljava/lang/String;

    const-string v1, "md5"

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->D:Ljava/lang/String;

    const-string v1, "postroll_bundle_url"

    .line 18
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->E:Ljava/lang/String;

    const-string v1, "cta_destination_url"

    .line 19
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->H:Ljava/lang/String;

    const-string v1, "cta_url"

    .line 20
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->I:Ljava/lang/String;

    const-string v1, "ad_token"

    .line 21
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->L:Ljava/lang/String;

    const-string v1, "video_identifier"

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->M:Ljava/lang/String;

    const-string v1, "template_url"

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->N:Ljava/lang/String;

    const-string v1, "TEMPLATE_ID"

    .line 24
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->S:Ljava/lang/String;

    const-string v1, "TEMPLATE_TYPE"

    .line 25
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->T:Ljava/lang/String;

    const-string v1, "ad_market_id"

    .line 26
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->X:Ljava/lang/String;

    const-string v1, "bid_token"

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->Y:Ljava/lang/String;

    const-string v1, "state"

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->Z:I

    const-string v1, "placement_id"

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->a0:Ljava/lang/String;

    const-string v1, "cta_overlay_enabled"

    .line 30
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vungle/warren/model/Advertisement;->F:Z

    const-string v1, "cta_click_area"

    .line 31
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vungle/warren/model/Advertisement;->G:Z

    .line 32
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->a:Lcom/google/gson/f;

    const-string v2, "ad_config"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/vungle/warren/AdConfig;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/AdConfig;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->J:Lcom/vungle/warren/AdConfig;

    .line 33
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->a:Lcom/google/gson/f;

    const-string v2, "checkpoints"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/vungle/warren/model/AdvertisementDBAdapter;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    .line 34
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->a:Lcom/google/gson/f;

    const-string v2, "dynamic_events_and_urls"

    .line 35
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/vungle/warren/model/AdvertisementDBAdapter;->f:Ljava/lang/reflect/Type;

    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->u:Ljava/util/Map;

    .line 37
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->a:Lcom/google/gson/f;

    const-string v2, "template_settings"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->O:Ljava/util/Map;

    .line 38
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->a:Lcom/google/gson/f;

    const-string v2, "mraid_files"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->P:Ljava/util/Map;

    .line 39
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->a:Lcom/google/gson/f;

    const-string v2, "cacheable_assets"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->Q:Ljava/util/Map;

    const-string v1, "tt_download"

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/Advertisement;->b0:J

    const-string v1, "asset_download_timestamp"

    .line 41
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/Advertisement;->assetDownloadStartTime:J

    const-string v1, "asset_download_duration"

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/Advertisement;->assetDownloadDuration:J

    const-string v1, "ad_request_start_time"

    .line 43
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/Advertisement;->adRequestStartTime:J

    const-string v1, "column_enable_om_sdk"

    .line 44
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vungle/warren/model/Advertisement;->U:Z

    const-string v1, "column_om_sdk_extra_vast"

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->V:Ljava/lang/String;

    const-string v1, "column_request_timestamp"

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/Advertisement;->c0:J

    const-string v1, "column_assets_fully_downloaded"

    .line 47
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/vungle/warren/model/Advertisement;->assetsFullyDownloaded:Z

    return-object v0
.end method

.method public bridge synthetic fromContentValues(Landroid/content/ContentValues;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/AdvertisementDBAdapter;->fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/Advertisement;

    move-result-object p1

    return-object p1
.end method

.method public tableName()Ljava/lang/String;
    .registers 2

    const-string v0, "advertisement"

    return-object v0
.end method

.method public toContentValues(Lcom/vungle/warren/model/Advertisement;)Landroid/content/ContentValues;
    .registers 6

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->q:Ljava/lang/String;

    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ad_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    iget-wide v1, p1, Lcom/vungle/warren/model/Advertisement;->s:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "expire_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "delay"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "show_close_delay"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "show_close_incentivized"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "countdown"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video_width"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video_height"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    iget-boolean v1, p1, Lcom/vungle/warren/model/Advertisement;->F:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "cta_overlay_enabled"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 13
    iget-boolean v1, p1, Lcom/vungle/warren/model/Advertisement;->G:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "cta_click_area"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 14
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->K:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retry_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    iget-boolean v1, p1, Lcom/vungle/warren/model/Advertisement;->W:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "requires_non_market_install"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 16
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->r:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->w:Ljava/lang/String;

    const-string v2, "campaign"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->A:Ljava/lang/String;

    const-string v2, "video_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->D:Ljava/lang/String;

    const-string v2, "md5"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->E:Ljava/lang/String;

    const-string v2, "postroll_bundle_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->H:Ljava/lang/String;

    const-string v2, "cta_destination_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->I:Ljava/lang/String;

    const-string v2, "cta_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->L:Ljava/lang/String;

    const-string v2, "ad_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->M:Ljava/lang/String;

    const-string v2, "video_identifier"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->N:Ljava/lang/String;

    const-string v2, "template_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->S:Ljava/lang/String;

    const-string v2, "TEMPLATE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->T:Ljava/lang/String;

    const-string v2, "TEMPLATE_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->X:Ljava/lang/String;

    const-string v2, "ad_market_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->Y:Ljava/lang/String;

    const-string v2, "bid_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->Z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->a0:Ljava/lang/String;

    const-string v2, "placement_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->a:Lcom/google/gson/f;

    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->J:Lcom/vungle/warren/AdConfig;

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->a:Lcom/google/gson/f;

    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    sget-object v3, Lcom/vungle/warren/model/AdvertisementDBAdapter;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkpoints"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->a:Lcom/google/gson/f;

    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->u:Ljava/util/Map;

    sget-object v3, Lcom/vungle/warren/model/AdvertisementDBAdapter;->f:Ljava/lang/reflect/Type;

    .line 35
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dynamic_events_and_urls"

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->a:Lcom/google/gson/f;

    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->O:Ljava/util/Map;

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "template_settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->a:Lcom/google/gson/f;

    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->P:Ljava/util/Map;

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mraid_files"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->a:Lcom/google/gson/f;

    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->Q:Ljava/util/Map;

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cacheable_assets"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-wide v1, p1, Lcom/vungle/warren/model/Advertisement;->b0:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tt_download"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    iget-wide v1, p1, Lcom/vungle/warren/model/Advertisement;->assetDownloadStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "asset_download_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 42
    iget-wide v1, p1, Lcom/vungle/warren/model/Advertisement;->assetDownloadDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "asset_download_duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 43
    iget-wide v1, p1, Lcom/vungle/warren/model/Advertisement;->adRequestStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ad_request_start_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    iget-boolean v1, p1, Lcom/vungle/warren/model/Advertisement;->U:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "column_enable_om_sdk"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 45
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->V:Ljava/lang/String;

    const-string v2, "column_om_sdk_extra_vast"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-wide v1, p1, Lcom/vungle/warren/model/Advertisement;->c0:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "column_request_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    iget-boolean p1, p1, Lcom/vungle/warren/model/Advertisement;->assetsFullyDownloaded:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "column_assets_fully_downloaded"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public bridge synthetic toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/AdvertisementDBAdapter;->toContentValues(Lcom/vungle/warren/model/Advertisement;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

###### Class com.vungle.warren.model.AdvertisementDBAdapter.AnonymousClass1 (com.vungle.warren.model.AdvertisementDBAdapter$1)
.class Lcom/vungle/warren/model/AdvertisementDBAdapter$1;
.super Lg7/a;
.source "AdvertisementDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/AdvertisementDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg7/a<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/vungle/warren/model/AdvertisementDBAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/model/AdvertisementDBAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter$1;->d:Lcom/vungle/warren/model/AdvertisementDBAdapter;

    invoke-direct {p0}, Lg7/a;-><init>()V

    return-void
.end method

###### Class com.vungle.warren.model.AdvertisementDBAdapter.AnonymousClass2 (com.vungle.warren.model.AdvertisementDBAdapter$2)
.class Lcom/vungle/warren/model/AdvertisementDBAdapter$2;
.super Lg7/a;
.source "AdvertisementDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/AdvertisementDBAdapter;
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
.field final synthetic d:Lcom/vungle/warren/model/AdvertisementDBAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/model/AdvertisementDBAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter$2;->d:Lcom/vungle/warren/model/AdvertisementDBAdapter;

    invoke-direct {p0}, Lg7/a;-><init>()V

    return-void
.end method

###### Class com.vungle.warren.model.AdvertisementDBAdapter.AnonymousClass3 (com.vungle.warren.model.AdvertisementDBAdapter$3)
.class Lcom/vungle/warren/model/AdvertisementDBAdapter$3;
.super Lg7/a;
.source "AdvertisementDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/AdvertisementDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg7/a<",
        "Ljava/util/List<",
        "Lcom/vungle/warren/model/Advertisement$Checkpoint;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lg7/a;-><init>()V

    return-void
.end method

###### Class com.vungle.warren.model.AdvertisementDBAdapter.AnonymousClass4 (com.vungle.warren.model.AdvertisementDBAdapter$4)
.class Lcom/vungle/warren/model/AdvertisementDBAdapter$4;
.super Lg7/a;
.source "AdvertisementDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/AdvertisementDBAdapter;
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
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lg7/a;-><init>()V

    return-void
.end method

###### Class com.vungle.warren.model.AdvertisementDBAdapter.AnonymousClass5 (com.vungle.warren.model.AdvertisementDBAdapter$5)
.class Lcom/vungle/warren/model/AdvertisementDBAdapter$5;
.super Lg7/a;
.source "AdvertisementDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/AdvertisementDBAdapter;
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
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/vungle/warren/model/AdvertisementDBAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/model/AdvertisementDBAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter$5;->d:Lcom/vungle/warren/model/AdvertisementDBAdapter;

    invoke-direct {p0}, Lg7/a;-><init>()V

    return-void
.end method

###### Class com.vungle.warren.model.AdvertisementDBAdapter.AdvertisementColumns (com.vungle.warren.model.AdvertisementDBAdapter$AdvertisementColumns)
.class public interface abstract Lcom/vungle/warren/model/AdvertisementDBAdapter$AdvertisementColumns;
.super Ljava/lang/Object;
.source "AdvertisementDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/IdColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/AdvertisementDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdvertisementColumns"
.end annotation


# static fields
.field public static final COLUMN_AD_CONFIG:Ljava/lang/String; = "ad_config"

.field public static final COLUMN_AD_MARKET_ID:Ljava/lang/String; = "ad_market_id"

.field public static final COLUMN_AD_REQUEST_START_TIMESTAMP:Ljava/lang/String; = "ad_request_start_time"

.field public static final COLUMN_AD_TOKEN:Ljava/lang/String; = "ad_token"

.field public static final COLUMN_AD_TYPE:Ljava/lang/String; = "ad_type"

.field public static final COLUMN_APP_ID:Ljava/lang/String; = "app_id"

.field public static final COLUMN_ASSETS_FULLY_DOWNLOADED:Ljava/lang/String; = "column_assets_fully_downloaded"

.field public static final COLUMN_ASSET_DOWNLOAD_DURATION:Ljava/lang/String; = "asset_download_duration"

.field public static final COLUMN_ASSET_DOWNLOAD_TIMESTAMP:Ljava/lang/String; = "asset_download_timestamp"

.field public static final COLUMN_BID_TOKEN:Ljava/lang/String; = "bid_token"

.field public static final COLUMN_CACHEABLE_ASSETS:Ljava/lang/String; = "cacheable_assets"

.field public static final COLUMN_CAMPAIGN:Ljava/lang/String; = "campaign"

.field public static final COLUMN_CHECKPOINTS:Ljava/lang/String; = "checkpoints"

.field public static final COLUMN_COUNTDOWN:Ljava/lang/String; = "countdown"

.field public static final COLUMN_CTA_CLICK_AREA:Ljava/lang/String; = "cta_click_area"

.field public static final COLUMN_CTA_DESTINATION_URL:Ljava/lang/String; = "cta_destination_url"

.field public static final COLUMN_CTA_OVERLAY_ENABLED:Ljava/lang/String; = "cta_overlay_enabled"

.field public static final COLUMN_CTA_URL:Ljava/lang/String; = "cta_url"

.field public static final COLUMN_DELAY:Ljava/lang/String; = "delay"

.field public static final COLUMN_DYNAMIC_EVENTS_AND_URLS:Ljava/lang/String; = "dynamic_events_and_urls"

.field public static final COLUMN_ENABLE_OM_SDK:Ljava/lang/String; = "column_enable_om_sdk"

.field public static final COLUMN_EXPIRE_TIME:Ljava/lang/String; = "expire_time"

.field public static final COLUMN_MD5:Ljava/lang/String; = "md5"

.field public static final COLUMN_MRAID_FILES:Ljava/lang/String; = "mraid_files"

.field public static final COLUMN_OM_SDK_EXTRA_VAST:Ljava/lang/String; = "column_om_sdk_extra_vast"

.field public static final COLUMN_PLACEMENT_ID:Ljava/lang/String; = "placement_id"

.field public static final COLUMN_POSTROLL_BUNDLE_URL:Ljava/lang/String; = "postroll_bundle_url"

.field public static final COLUMN_REQUIRES_NON_MARKET_INSTALL:Ljava/lang/String; = "requires_non_market_install"

.field public static final COLUMN_RETRY_COUNT:Ljava/lang/String; = "retry_count"

.field public static final COLUMN_SERVER_REQUEST_TIMESTAMP:Ljava/lang/String; = "column_request_timestamp"

.field public static final COLUMN_SHOW_CLOSE_DELAY:Ljava/lang/String; = "show_close_delay"

.field public static final COLUMN_SHOW_CLOSE_INCENTIVISED:Ljava/lang/String; = "show_close_incentivized"

.field public static final COLUMN_STATE:Ljava/lang/String; = "state"

.field public static final COLUMN_TEMPLATE_ID:Ljava/lang/String; = "TEMPLATE_ID"

.field public static final COLUMN_TEMPLATE_SETTINGS:Ljava/lang/String; = "template_settings"

.field public static final COLUMN_TEMPLATE_TYPE:Ljava/lang/String; = "TEMPLATE_TYPE"

.field public static final COLUMN_TEMPLATE_URL:Ljava/lang/String; = "template_url"

.field public static final COLUMN_TT_DOWNLOAD:Ljava/lang/String; = "tt_download"

.field public static final COLUMN_VIDEO_HEIGHT:Ljava/lang/String; = "video_height"

.field public static final COLUMN_VIDEO_IDENTIFIER:Ljava/lang/String; = "video_identifier"

.field public static final COLUMN_VIDEO_URL:Ljava/lang/String; = "video_url"

.field public static final COLUMN_VIDEO_WIDTH:Ljava/lang/String; = "video_width"

.field public static final TABLE_NAME:Ljava/lang/String; = "advertisement"
