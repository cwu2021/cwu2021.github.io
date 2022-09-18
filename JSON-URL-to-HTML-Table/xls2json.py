# xls to json modules
import sys
import argparse
from openpyxl import load_workbook, Workbook
import pandas as pd
from datetime import datetime, date, time, timedelta
from operator import is_not
from functools import partial
import re

# xls to rss modules
import sys
import argparse
import pandas as pd
from pytz import reference
from datetime import datetime, date, time, timedelta
from openpyxl import load_workbook, Workbook
from feedgen.feed import FeedGenerator
import uuid
