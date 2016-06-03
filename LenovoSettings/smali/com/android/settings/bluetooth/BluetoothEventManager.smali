.class final Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DockEventHandler;,
        Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$PairingCancelHandler;,
        Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$UuidChangedHandler;,
        Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$ClassChangedHandler;,
        Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;,
        Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$NameChangedHandler;,
        Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;,
        Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;,
        Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;,
        Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;,
        Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothEventManager"


# instance fields
.field private final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileIntentFilter:Landroid/content/IntentFilter;

.field private mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 4
    .param p1, "adapter"    # Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    .param p2, "deviceManager"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 142
    new-instance v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    .line 78
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    .line 82
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 85
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 88
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 89
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 90
    const-string v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {v1, p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 91
    const-string v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {v1, p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 92
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 95
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 96
    const-string v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$PairingCancelHandler;

    invoke-direct {v1, p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 99
    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 100
    const-string v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 103
    const-string v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 105
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method static synthetic access$1000(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;
    .param p1, "x1"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method private dispatchDeviceAdded(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .param p1, "cachedDevice"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 225
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;

    .line 227
    .local v0, "callback":Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;
    invoke-interface {v0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 229
    .end local v0    # "callback":Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    return-void
.end method

.method private static getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 129
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 130
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 131
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 132
    .local v2, "state":I
    if-eqz v2, :cond_0

    .line 133
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 134
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 139
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "state":I
    :cond_0
    return-object v3
.end method


# virtual methods
.method addHandler(Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method addProfileHandler(Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method readPairedDevices()Z
    .locals 8

    .prologue
    .line 398
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 399
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_1

    .line 400
    const/4 v3, 0x0

    .line 413
    :cond_0
    return v3

    .line 403
    :cond_1
    const/4 v3, 0x0

    .line 404
    .local v3, "deviceAdded":Z
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 405
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v5, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 406
    .local v1, "cachedDevice":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_2

    .line 407
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5, v6, v7, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 408
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V

    .line 409
    const/4 v3, 0x1

    goto :goto_0
.end method

.method registerCallback(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerProfileIntentReceiver()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method setProfileManager(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    .line 73
    return-void
.end method

.method unregisterCallback(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
