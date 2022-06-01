from flask import Flask
from flask import request
import sys
import json

app = Flask(__name__)


@app.route("/img", methods=['post', 'get'])
def img():
    case_number = request.args.get('case_number')  # 箱号
    license_plate = request.args.get('license_plate')  # 车牌
    trailer_license_plate = request.args.get('trailer_license_plate')  # 挂车车牌
    seal_number = request.args.get('seal_number')  # 铅封号
    ret = {'case_number': {'type': '', 'number': ''},
           'license_plate': '', 'trailer_license_plate': '', 'seal_number': ''}
    if case_number:
        ret['case_number']['type'] = 'oye'
        ret['case_number']['number'] = 'oye1'
    if license_plate:
        ret['license_plate'] = 'oye'
    if trailer_license_plate:
        ret['trailer_license_plate'] = 'oye'
    if seal_number:
        ret['seal_number'] = 'oye'
    return json.dumps(ret)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=sys.argv[1])
